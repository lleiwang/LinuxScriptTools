#!/bin/bash

source ~/.zshrc

## add local file to git
echo "==> Add local files."
git add .
echo "==> Add files Done."

## add commit comments
var_time=`date`
echo "==> Now time is : $var_time"
git commit -m "$var_time"

## push 
git push
