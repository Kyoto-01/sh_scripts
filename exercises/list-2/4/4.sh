#!/bin/bash

d1=$1
d2=$2
d3=$3

ls ${d1} &> /dev/null && echo "SIM" || echo "${d1} foi para Nárnia"
ls ${d2} &> /dev/null && echo "SIM" || echo "${d2} foi para o País das Maravílhas"
ls ${d3} &> /dev/null && echo "SIM" || echo "${d3} foi para a deep web"

