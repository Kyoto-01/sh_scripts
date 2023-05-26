#!/bin/bash


# Atribuindo politicas padrao

iptables -P FORWARD DROP
iptables -P INPUT DROP
iptables -P OUTPUT DROP


# Liberando ping da LAN para o roteador

iptables -A INPUT -i eth1 -p icmp --icmp-type 8 -s 192.168.0.0/24 -d 192.168.0.254 -j ACCEPT
iptables -A OUTPUT -o eth1 -p icmp --icmp-type 0 -d 192.168.0.0/24 -s 192.168.0.254 -j ACCEPT


# Liberando trafego icmp da internet para o roteador (exceto icmp_request)

iptables -A INPUT -i eth0 -p icmp ! --icmp-type 8 -j ACCEPT
iptables -A OUTPUT -o eth0 -p icmp -j ACCEPT


# Liberando acesso ao servico SSH do roteador para 192.169.0.1

iptables -A INPUT -i eth1 -p tcp --dport 22 -s 192.168.0.1 -d 192.168.0.254 -j ACCEPT
iptables -A OUTPUT -o eth1 -p tcp --sport 22 -d 192.168.0.1 -s 192.168.0.254 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j LOG


# Liberando acesso a internet por meio de NAT

iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
iptables -A FORWARD -i eth0 -o eth1 -m state --state RELATED,ESTABLISHED -j ACCEPT

iptables -A FORWARD -i eth1 -o eth0 -p udp --dport 53 -s 192.168.0.0/24 -d 8.8.8.8 -j ACCEPT
iptables -A FORWARD -i eth1 -o eth0 -p tcp --dport 80 -s 192.168.0.0/24 -j ACCEPT
iptables -A FORWARD -i eth1 -o eth0 -p tcp --dport 443 -s 192.168.0.0/24 -j ACCEPT
iptables -A FORWARD -i eth1 -o eth0 -p tcp --dport 3306 -s 192.168.0.0/24 -j ACCEPT
iptables -A FORWARD -i eth1 -o eth0 -p tcp --dport 23 -s 192.168.0.0/24 -j ACCEPT
iptables -A FORWARD -i eth1 -o eth0 -p tcp --dport 21 -s 192.168.0.0/24 -j ACCEPT


# Registrando requisicoes da LAN para servidores DNS com ip diferente de 8.8.8.8

iptables -A FORWARD -i eth1 -o eth0 -p udp --dport 53 -s 192.168.0.0/24 ! -d 8.8.8.8 -j LOG


# Liberar acesso da internet ao servidor web da DMZ

iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j DNAT --to-destination 172.16.0.9:80
iptables -A FORWARD -i eth0 -o eth2 -p tcp --dport 80 -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT
iptables -A FORWARD -i eth2 -o eth0 -p tcp --sport 80 -m state --state ESTABLISHED,RELATED -j ACCEPT


# Liberar acesso da DMZ a internet

iptables -A FORWARD -s 172.16.0.8/29 -i eth2 -o eth0 -d 8.8.8.8 -p udp --dport 53 -j ACCEPT
iptables -A FORWARD -i eth0 -o eth2 -d 172.16.0.8/29 -p udp --sport 53 -j ACCEPT

iptables -A FORWARD -s 172.16.0.8/29 -i eth2 -o eth0 -p tcp --dport 80 -j ACCEPT
iptables -A FORWARD -i eth0 -o eth2 -d 172.16.0.8/29 -p tcp --sport 80 -j ACCEPT

iptables -A FORWARD -s 172.16.0.8/29 -i eth2 -o eth0 -p tcp --dport 443 -j ACCEPT
iptables -A FORWARD -i eth0 -o eth2 -d 172.16.0.8/29 -p tcp --sport 443 -j ACCEPT


# Liberar acesso ao SIAF

iptables -A INPUT -i eth1 -s 192.168.0.2 -d 200.200.200.1 -p tcp --dport 5200 -j ACCEPT
iptables -A OUTPUT -o eth1 -s 200.200.200.1 -d 192.168.0.2 -p tcp --sport 5200 -j ACCEPT
