#!/bin/bash

file=$1

out=$( cat ${file} | tr " \t" "*&" | tr [:space:] "@" | tr -s "@" | tr "@" "\n" | tr "*&" " \t" )

[ -z "$( head -1 <<< "${out}" )" ] && out=$( tail -n+2 <<< "${out}" )
[ -z "$( tail -1 <<< "${out}" )" ] && out=$( head -n-1 <<< "${out}" )   

echo "${out}"
