#!/bin/bash

read -p "Arquivo 1: " f1
read -p "Arquivo 2: " f2
read -p "Arquivo 3: " f3
read -p "Arquivo 4: " f4

mostlinesf=""
lines=0

for f in ${f1} ${f2} ${f3} ${f4}
do
	# verificando se o arquivo atual existe
	if ! ls $f &> /dev/null; then
		echo "erro: o arquivo $f não existe"
		exit
	fi

	# verificando se o arquivo atual contém mais linhas do que o último com mais linhas
	if [ $( cat $f | wc -l ) -gt ${lines} ]; then	
		mostlinesf=$f
		lines=$( cat ${mostlinesf} | wc -l )
	fi
done

echo ${mostlinesf}

