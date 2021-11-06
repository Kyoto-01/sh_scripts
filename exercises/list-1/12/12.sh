#!/bin/bash

echo '$HOME ' "(valor atual = ${HOME}) --> Guarda o caminho para o diretório inicial do usuário atual."
echo '$PWD ' "(valor atual = ${PWD}) --> Guarda a localização atual do usuário na hierarquia de arquivos."
echo '$$ ' "(valor atual = $$) --> Guarda o PID do processo atual."
echo '$PATH' "(valor atual = ${PATH}) --> Guarda os caminhos disponíveis para que o sistema procure pelos executáveis."
echo '$SHELL' "(valor atual = ${SHELL}) --> Guarda o caminho para o shell que está sendo executado."
echo '$1' "(valor atual = ${1}) --> Guarda o primeiro parâmetro passado para o último comando executado."
echo '$?' "(valor atual = $?) --> Guarda o código de saída do último comando executado."
echo '$EDITOR' "(valor atual = ${EDITOR}) --> Guarda o nome do editor de textos padrão do sistema."
