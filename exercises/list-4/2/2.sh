#!/bin/bash

DOWN_DB=$1

declare -A downs

while read user url qtdown
do
	downs["$user"]=$(( ${downs["${user}"]} + ${qtdown} ))
done < ${DOWN_DB}

for user in ${!downs[*]}
do
	echo "${user} ${downs[${user}]}"
done
