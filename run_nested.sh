# run multiple files in nested folders, output file (if produced) is dumped to SAME folder of caller file

# file1
#     |__file1.c
#     |__text.txt
# file2
#     |__file2.c
#     |__text.txt
# thisbash
# output_writen_file

for file in */*.c; do 
    printf "\n------------ " && echo $file: && 
    gcc -o "build.out" $file &&
    ./build.out &&
    rm build.out;
done


# for file in */*.c; do 
#     printf "\n------------ " && echo $file: && 
#     gcc -o "build.out" $file &&
#     echo "${file%.c}.out" &&
#     ./"${file%.c}.out" &&
#     rm "${file%.c}.out";
# done