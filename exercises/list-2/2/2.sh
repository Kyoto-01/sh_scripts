#!/bin/bash

f1=$1
f2=$2
f3=$3

ls ${f1} ${f2} ${f3} > ok.log 2> erro.log
