#!/bin/bash

echo "REDIRECIONADORES"
echo


echo
echo "**********"
echo "SAÍDA"
echo "**********"
echo

echo "> Redireciona a saída padrão de um comando para um arquivo, apagando o conteúdo anterior desse arquivo" 
echo "Ex.: ls -la > out.txt"
echo

echo ">> Redireciona a saída padrão de um comando para um arquivo, concatenando essa saída ao fim do conteúdo anterior desse arquivo"
echo "EX.: ls -la >> out.txt"
echo

echo "2> Redireciona a saída de erro de um comando para um arquivo, apagando o conteúdo anterior desse arquivo"
echo "EX.: ls milho.txt 2> err.txt"
echo

echo "2>> Redireciona a saída de erro de um comando para um arquivo, concatenando essa saída ao fim do conteúdo anterior desse arquivo"
echo "EX.: ls milho.txt 2>> err.txt"
echo

echo "&> Redireciona a saída padrão e a saída de erro de um comando para um arquivo, apagando o conteúdo anterior desse arquivo"
echo "EX.: cat milho.txt &> all.txt"
echo

echo "&>> Redireciona a saída padrão e a saída de erro de um comando para um arquivo, concatenando essas saídas ao fim do conteúdo anterior desse arquivo"
echo "EX.: cat milho.txt &>> all.txt"
echo


echo
echo "**********"
echo "ENTRADA"
echo "**********"
echo

echo "< Redireciona o conteúdo de um arquivo para a entrada de um comando"
echo "EX.: bc < calcs.txt"
echo

echo "<< Pede entradas ao usuário até que o mesmo digite uma palavra chave especificada e redireciona essas entradas para a entrada de um comando"
echo "EX.: bc << end (OBS.: O 'end' é a palavra chave que indica o fim dos pedidos de entrada)"
echo

echo "<<< Redireciona uma string para a entrada de um comando"
echo "EX.: bc <<< \"5 + 2\""
echo


echo
echo "**********"
echo "PIPE"
echo "**********"
echo

echo "| redireciona a saída de um comando para a entrada de outro"
echo "EX.: cat calcs.txt | bc"
echo

