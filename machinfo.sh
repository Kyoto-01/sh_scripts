#!/bin/bash

function net(){
	echo -e "=== MAC ===\n$(ip addr | grep link/ether | tr -s ' ' | cut -d ' ' -f 3)"
	echo -e "=== IPv4 ===\n$(ip addr | grep 'inet .*\..*\..*/.*' | tr -s ' ' | cut -d ' ' -f 3)"
	echo -e "=== IPv6 ===\n$(ip addr | grep 'inet6' | tr -s ' ' | cut -d ' ' -f 3)"
	echo -e "=== TABELA DE ROTAS ===\n$(routel 2> /dev/null)"
}

if [ $# == 1 ]; then
	case $1 in
		-A)arch ;;
		-c)lscpu ;;
		-d)df ;;
		-h)ls ~ -1 | wc -l ;;
		-m)free ;;
		-n)net ;;
		-k)echo "Kernel : $(uname -s) $(uname -r) $(uname -v)" ;;
		-p)lsblk ;;
		-s)echo ${SHELL} ;;
		-u)w ;;
		-a)echo -e "$(lscpu)\n\n$(df)\n\n$(lsblk)\n\n$(free)\n\n$(net)\n\nshell: ${SHELL}" ;;
		*)echo "Argumento inválido!!!" ;;
	esac
else
	echo "Ops! machinfo precisa de 1 e somente 1 argumento!"
fi
