# rename
for f in *\ *; do mv "$f" "${f// /_}"; done

# move
for file in *.c
do
    dir="${file%.c}"
    mkdir -- "$dir"
    mv -- "$file" "$dir"
    cp -- "text.txt" "$dir"
    cp -- "seed.sh" "$dir"
done

# empty output files
echo "" > join_screen_output.txt 

# runall: execute all seeds
for run in */seed.sh; do
    printf "\n-------------- " && echo "${run%/seed.sh} --------------" && 
    cd "./${run%seed.sh}" &&
    bash seed.sh &&
    if [ $? -eq 0 ]; then
        echo OK;
    else echo FAIL;
    fi
    cd ..
done

# empty output file
echo "" > join_concordance.txt 

# join all concordance files
for out in */concordance.txt; do
    echo -e "\n-------------- ${out%/concordance.txt} --------------" >> join_concordance.txt &&
    cat $out >> join_concordance.txt ;
done