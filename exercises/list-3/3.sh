#!/bin/bash

read -p "Digite um endereço IP: " ip

read oct1 oct2 oct3 oct4 <<< "$( tr '.' ' ' <<< ${ip} )"
echo

i=1
for oct in ${oct1} ${oct2} ${oct3} ${oct4}
do
	bin=$( bc <<< "obase=2;${oct}" )
	bin=$( printf %8s "${bin}" | tr ' ' '0' )
	
	echo "Octeto #${i}: ${oct} em binário ${bin}"
	
	i=$(( ${i} + 1 ))
done

