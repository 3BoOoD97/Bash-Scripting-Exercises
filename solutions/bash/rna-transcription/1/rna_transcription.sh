#!/usr/bin/env bash


   main () {

    input=$1

    if [ -z "$input" ];then
    exit 0
    fi

    rna=""
    for (( c=0; c<${#input}; c++)) do
    if [[ ${input:c:1} ==  'G' ]]; then
        str+="C"
    elif [[ ${input:c:1} ==  'C' ]]; then
        str+="G"

    elif [[ ${input:c:1} ==  'T' ]]; then
        str+="A"

    elif [[ ${input:c:1} ==  'A' ]]; then
        str+="U"

    else
    echo "Invalid nucleotide detected."
    exit 1
    fi
done    
echo "$str"

   }


   main "$@"
