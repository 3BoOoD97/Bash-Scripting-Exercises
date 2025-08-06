#!/usr/bin/env bash


   main () {

allergy_names=("eggs" "peanuts" "shellfish" "strawberries" "tomatoes" "chocolate" "pollen" "cats")
allergy_values=(1 2 4 8 16 32 64 128)

score=$1
command=$2
item=$3

if [[ $command == "list" ]]; then
    result=()
    for i in "${!allergy_values[@]}"; do
        if (( score & allergy_values[i] )); then
            result+=("${allergy_names[i]}")
        fi
    done
    if [ ${#result[@]} -eq 0 ]; then
        echo
    else
        echo "${result[@]}"
    fi

elif [[ $command == "allergic_to" ]]; then
    found=0
    for i in "${!allergy_names[@]}"; do
        if [[ "${allergy_names[i]}" == "$item" ]]; then
            if (( score & allergy_values[i] )); then
                echo "true"
                found=1
                break
            fi
        fi
    done
    if [[ $found -eq 0 ]]; then
        echo "false"
    fi
fi
}
#
#   # call main with all of the positional arguments
   main "$@"

