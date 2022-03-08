# compile and run files in the same levels

# file1.c
# file2.c
# this bash

for file in *.c; do 
    echo $file : && 
    gcc -o build.out $file && 
    ./build.out; 
done