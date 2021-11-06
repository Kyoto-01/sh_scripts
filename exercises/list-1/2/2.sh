#!/bin/bash

echo -e "[ Me diga o nome de 4 diretórios e eu te direi o que tem neles... ]\n"

read -p 'Diretório 1 --> ' d1
read -p 'Diretório 2 --> ' d2
read -p 'Diretório 3 --> ' d3
read -p 'Diretório 4 --> ' d4

echo -e "\n[ Conteúdo do diretório ${d1} ]\n$(ls ${d1})" > out.txt
echo -e "\n[ Conteúdo do diretório ${d2} ]\n$(ls ${d2})" >> out.txt
echo -e "\n[ Conteúdo do diretório ${d3} ]\n$(ls ${d3})" >> out.txt
echo -e "\n[ Conteúdo do diretório ${d4} ]\n$(ls ${d4})" >> out.txt
