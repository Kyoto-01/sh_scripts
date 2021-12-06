#!/bin/bash

opt=$1
typ=""

case ${opt} in
	'-a') 
		echo -e "O portal para acessar seus arquivos são os diretórios, aqui estão eles:\n"
		typ="d"
	;;
	'-b') 
		echo -e "Os arquivos são os baús onde seus dados são guardados, veja-os:\n"
		typ="-"
	;;
	'-c') 
		echo -e "Os links simbólicos são mapas para acessar seus arquivos, tenho alguns aqui, veja:\n"
		typ="l"
	;;
	*)
		echo "< Opção inválida, tente outras opções e talvez consiga ;) >"
		exit 1
	;;
esac

out=$( ls -l | grep -E "^${typ}" | tr -s " " | cut -d " " -f 9- )

if [ -n "${out}" ]
then
	echo "${out}"
else
	echo "< Nenhum encontrado neste local, ande um pouco mais e talvez encontre :) >"
fi
