#!/bin/bash

files=("$@")
for i in "${files[@]}"
do
    touch $i.cc && cp ~/Career/CP/Library/cpp-template.cc $i.cc
done
