# execute all seeds

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