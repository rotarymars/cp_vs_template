#!/bin/bash


source /c/local/oj_env/Scripts/activate

if [ "$1" == "t" ]; then
  make test PROGRAM=$2
else
  python oj_helper.py $*
fi
