#!/bin/bash

data=$(date +'%H-%d-%m-%Y')

mkdir ~/${data}
cp -r . ~/${data}
tar -czf ${data}.tar.gz ~/${data} &> /dev/null
rm -rf ~/${data}
