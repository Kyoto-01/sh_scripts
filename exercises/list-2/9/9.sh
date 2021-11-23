#!/bin/bash

strt=$1
end=$2

for (( i=$(( ${strt} + 1 )); i < ${end}; i++ ))
do
	sum=$(( ${sum} + $i ))
done

echo ${sum}
