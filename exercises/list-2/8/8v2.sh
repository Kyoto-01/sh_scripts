#!/bin/bash

strt=$1
end=$2

echo "**************************************************"
echo "Números ímpares entre ${strt} e ${end}"
echo "**************************************************"

for n in $( seq ${strt} ${end} )
do
	(( $n % 2 != 0 )) && echo $n
done
