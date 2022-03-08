# remove spaces in file names in the same levels

# file1.c
# file2.c
# this bash

for f in *\ *; do mv "$f" "${f// /_}"; done