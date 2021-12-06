#!/bin/bash

file=$1

tr "[0-9]" "X" < ${file}
