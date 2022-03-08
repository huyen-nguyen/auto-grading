# move c files to respective folders, as each file will read INPUT and produce OUTPUT separately

# Before:
# file1.c
# file2.c
# thisbash

# After:
# file1
#     |__file1.c
#     |__text.txt
#     |__seed.sh
# file2
#     |__file2.c
#     |__text.txt
#     |__seed.sh
# thisbash

for file in *.c
do
    dir="${file%.c}"
    mkdir -- "$dir"
    mv -- "$file" "$dir"
    cp -- "text.txt" "$dir"
    cp -- "seed.sh" "$dir"
done