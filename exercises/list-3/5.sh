#!/bin/bash

read -sp "Password: " pass

echo

# Outra opção pra validação: echo ${pass} | grep -E ".{6,}" | grep -E "[A-Z]" | grep -E "[0-9]"

if echo ${pass} | grep -P "(?=.*.{6,})(?=.*[A-Z])(?=.*[0-9])" &> /dev/null
then
	echo "Senha válida! :)"
else
	echo "Senha inválida! :("
fi
