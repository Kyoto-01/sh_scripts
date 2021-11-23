#!/bin/bash

n1=$1
n2=$2

if [ ${n1} -lt ${n2} ]
then
	echo "Maior: ${n2}"
	echo "Menor: ${n1}"

elif [ ${n1} -gt ${n2} ]
then
	echo "Maior: ${n1}"
	echo "Menor: ${n2}"

else
	echo "Os números são iguais"

fi
