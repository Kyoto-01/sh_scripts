#!/bin/bash

opts=$*

echo "**************************************************"
echo "Ajuda do comando test"
echo "**************************************************"
echo

for o in ${opts}
do
	# opções de parâmetros --> logica aritmetica strings variaveis arquivos

	if [ $o == "logica" ]
	then
		echo "Parâmetros de testes lógicos"		
		echo -e "\ttest <condicao> -a <condicao> : É um AND e passa no teste se as 2 ou mais condições forem satisfeitas"
		echo -e "\ttest <condicao> -o <condicao> : É um OR e Passa no teste se ao menos 1 das condições for satisfeita"
		echo -e "\t! test <condicao> : É um NOT e Passa no teste se a condição falhar. Pode negar o teste inteiro ou apenas uma condição"
		echo

	elif [ $o == "aritmetica" ]
	then
		echo "Parâmetros de testes aritméticos"
		echo -e "\ttest <numero> -eq <numero> : Passa no teste se os números forem iguais"		
		echo -e "\ttest <numero> -lt <numero> : Passa no teste se o primeiro número for menor do que o segundo"			
		echo -e "\ttest <numero> -gt <numero> : Passa no teste se o primeiro número for maior do que o segundo"	
		echo -e "\ttest <numero> -le <numero> : Passa no teste se o primeiro número for menor ou igual ao segundo"	
		echo -e "\ttest <numero> -ge <numero> : Passa no teste se o primeiro número for maior ou igual ao segundo"	
		echo

	elif [ $o == "strings" ]
	then
		echo "Parâmetros de testes com strings"
		echo -e "\ttest <string> == <string> : Passa no teste se as strings forem iguais"
		echo -e "\ttest <string> != <string> : Passa no teste se as strings forem diferentes"
		echo

	elif [ $o == "variaveis" ]
	then
		echo "Parâmetros de testes com variáveis"
		echo -e "\ttest -z <variavel> : Passa no teste se a variável estiver vazia"
		echo -e "\ttest -n <variavel> : Passa no teste se a variável não estiver vazia"
		echo

	elif [ $o == "arquivos" ]
	then
		echo "Parâmetros de testes com arquivos"
		echo -e "\ttest -f <arquivo> : Passa no teste se o parâmetro passado é um arquivo"
		echo -e "\ttest -e <arquivo> : Passa no teste se o arquivo existe"
		echo -e "\ttest -d <arquivo> : Passa no teste se o parâmetro passado é um diretório"		
		echo

	fi
done

echo "execute \"man test\" para mais informações do comando test"

