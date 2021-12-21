#!/bin/bash

CONTACTS=$1


cat ${CONTACTS} | sed -E "s/([0-9]{2})([0-9])([0-9]{4})([0-9]{4})/(\1) \2 \3-\4/g"

