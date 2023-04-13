#!/bin/bash

filename=$(basename -- "$1")
extension="${filename##*.}"
filename="${filename%.*}"

if [ $extension == cc ]; then
  g++ $filename.cc -o $filename.exe && ./$filename.exe
elif [ $extension == cpp ]; then
  g++ $filename.cpp -o $filename.exe && ./$filename.exe
elif [ $extension == py ]; then
  python3 $filename.py
elif [ $extension == js ]; then
  node $filename.js
else
  echo "NOT! compatible"
fi
