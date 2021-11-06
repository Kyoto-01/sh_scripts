#!/bin/bash

data=$(date +'%H-%d-%m-%Y')

mkdir ~/${data}
cp -r . ~/${data}
