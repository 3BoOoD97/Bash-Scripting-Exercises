#!/usr/bin/env bash

   main () {
   input=$1
   result=0
   numberLength=${#input}

for digit in $(echo "$input" | grep -o .); do
    numberPower=$(( digit ** numberLength ))
    result=$(( result + numberPower ))
done

 if (( result == input )); then
        echo "true"
    else
        echo "false"
    fi
    }
#
#   # call main with all of the positional arguments
   main "$@"

