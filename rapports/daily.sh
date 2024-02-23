#!/bin/bash

file=`date +'%d-%m'`.txt
template="template.txt"

if ! [ -e $file ]; then
  cat $template | sed "s/{date}/`date +'%d-%m'`/g" > $file 
fi

vim "$file"

