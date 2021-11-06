#!/bin/bash

a=${1}
b=${2}
res=$( awk "BEGIN { print ( ${a} + 1 ) * ( ${b} + 2 ) }" )

echo ${res}
