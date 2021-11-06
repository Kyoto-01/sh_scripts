#!/bin/bash

lf1=$( cat ${1} | wc -l )
lf2=$( cat ${2} | wc -l )
lf3=$( cat ${3} | wc -l )
lftotal=$(( ${lf1} + ${lf2} + ${lf3} ))

echo ${lftotal}
