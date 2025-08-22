#!/usr/bin/env bash


   main () {
   num=$1

   if [[ $num -lt 1 ]]; then
    echo "Error: Only positive numbers are allowed"
    exit 1
   fi

    steps=0
   while [ $num -ne 1 ]
   do
    if [[ $((num % 2)) -ne 0 ]]; then
    #The number is odd
    num=$((num*3 + 1))

    #Else it is even 
    else
    num=$((num/2))
    fi

    ((steps++))
   done

echo "$steps"
  }
#
   main "$@"


