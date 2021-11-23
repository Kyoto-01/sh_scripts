#!/bin/bash

f=$1

[ ! -e $f -o $( cat $f 2> /dev/null | wc -l ) -gt 3 ] && echo "BAD"
