#!/bin/bash

file="NULL"

while true
do
	echo "Arquivo atual: ${file}"
	echo

	echo  "OPÇÔES
	--------------------------------------------------------------------------------
	r - Selecionar um arquivo	
	a - Remover letras do arquivo
	b - Remover dígitos do arquivo
	c - Substituir caracteres não alfanuméricos do arquivo por ~
	q - Sair
	---------------------------------------------------------------------------------
	"

	read -p "Opção --> " opt

	echo

	case ${opt} in
		r)
			read -p "Digite o nome do arquivo --> " file
		;;
		a)
			sed -E "s/[a-zA-Z]//g" ${file}
		;;
		b)
			sed -E "s/[0-9]//g" ${file}
		;;
		c)
			sed -E "s/[^a-zA-Z0-9]/~/g" ${file}
		;;
		q)
			break
		;;
		*)
			echo "Opção inválida, tente novamente!"
		;;
	esac

	echo
done
