#!/usr/bin/env bash


   main () {
year=$1

#Validate the input 
if [[ -z "$year" || ! "$year" =~ ^[0-9]+$ || $# -gt 1 ]]; then
echo "Usage: leap.sh <year>"
exit 1
fi

# The logic
if [[ $((year % 4)) -ne 0 ]]; then
    echo "false"
elif [[ $((year % 100)) -ne 0 ]]; then
    echo "true"
elif [[ $((year % 400)) -eq 0 ]]; then
    echo "true"
else
    echo "false"
fi
    
   }

   main "$@"

