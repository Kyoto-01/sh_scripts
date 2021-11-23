#!/bin/bash

echo "DIRS"
for d in *; do
	[ -d $d ] && echo $d
done
echo

echo "FILES"
for f in *; do
	[ -f $f -a ! -h $f ] && echo $f
done
echo

echo "LINKS"
for l in *; do
	[ -h $l ] && echo $l
done
echo
