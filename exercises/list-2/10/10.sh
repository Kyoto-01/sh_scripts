#!/bin/bash

files=$*
allexist=1

for f in ${files}
do
	if [ -e $f ]
	then
		echo "$f SIM"
	else
		allexist=0
		echo "$f NAO"
	fi
done

[ ${allexist} -eq 1 ] && echo "Nenhum arquivo foi para o mundo de OZ..."
