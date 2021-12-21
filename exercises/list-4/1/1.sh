#!/bin/bash

FILE=$1
FORMAT=$( cat nomes.txt | sed -E -e "s/([a-zA-Z]) ([a-zA-Z])/\1*\2/g" -e "s/([0-9]+) ([a-zA-Z])/\1*\2/g" | tr  -s ' ' )

echo "${FORMAT}" | cut -d ' ' -f 1 | tr '*' ' ' > col1.txt
echo "${FORMAT}" | cut -d ' ' -f 2 | tr '*' ' ' > col2.txt
