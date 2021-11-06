#!/bin/bash

d1=${1}
d2=${2}
d3=${3}
d4=${4}

echo -e "\n[ Conteúdo do diretório ${d1} ]\n$(ls ${d1})" > out.txt
echo -e "\n[ Conteúdo do diretório ${d2} ]\n$(ls ${d2})" >> out.txt
echo -e "\n[ Conteúdo do diretório ${d3} ]\n$(ls ${d3})" >> out.txt
echo -e "\n[ Conteúdo do diretório ${d4} ]\n$(ls ${d4})" >> out.txt
