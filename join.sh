# empty output file
echo "" > join_concordance.txt 

# join all concordance files
for out in */concordance.txt; do
    echo "-------------- ${out%/concordance.txt} --------------" >> join_concordance.txt &&
    cat $out >> join_concordance.txt ;
done