#!/bin/bash

a=${1}
b=${2}
res=$(( ( ${a} + 1 ) * ( ${b} + 2 ) ))

echo ${res}
