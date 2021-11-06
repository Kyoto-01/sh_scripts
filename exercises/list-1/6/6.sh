#!/bin/bash

echo '*************************'
echo 'CONCEITOS SHELL SCRIPT'
echo '*************************'

echo -e "\n[ Substituição de variáveis ]"
echo 'O espaço ocupado pela referência ao "nome" de uma variável é substituído pelo "valor" dessa variável'
echo '* Exemplo *'
saudacao='olá'
echo 'saudacao="olá"'
echo 'echo ${saudacao}' 
echo "( O comando acima será substituído por: echo ${saudacao} )"

echo -e "\n[ Substituição de shell ]"
echo 'O espaço ocupado por um "comando" é substituído pela "saída" desse comando'
echo '* Exemplo *'
echo 'echo "conteúdo do diretório /home --> $(ls /home)"'
echo "( O comando acima será substituído por: echo 'conteúdo do diretório /home --> $(ls /home)' )"

echo -e "\n[ Substituição aritmética ]"
echo 'O espaço ocupado por uma "expressão aritmética" é substituido pelo "resultado" dessa expressão'
echo '* Exemplo *'
echo 'echo $(( 10 * 5 ))'
echo "( O comando acima será substituído por: echo $(( 10 * 5 )) )" 
