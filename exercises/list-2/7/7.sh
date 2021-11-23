#!/bin/bash

read -p "digite 4 números com casas decimais: " n1 n2 n3 n4

min=${n1}

for n in ${n2} ${n3} ${n4}; do
	[ $( bc <<< "$n < ${min}" ) -eq 1 ] && min=$n
done

echo ${min}
