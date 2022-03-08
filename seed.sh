#!/bin/bash

for file in *.c; do 
    gcc -o gcc -o build.out $file &&    # compile
    ./build.out                         # run
    rm build.out;                       # delete  
done