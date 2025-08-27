#!/usr/bin/env bash


   main () {
     num=$1
     
cleanedNum=$(echo "$num" | tr -d ' -!(@).:+-')

if [[ ${cleanedNum:0:1} -eq 1 ]]; then
 cleanedNum=${cleanedNum:1}   
fi

area="${cleanedNum:0:2}"
exchange="${cleanedNum:3:5}"
local="${cleanedNum:6:9}"



re='^[0-9]+$'

if [[ ! $cleanedNum =~ $re || ${#cleanedNum} -ne 10  ]] ; then
   echo "Invalid number.  [1]NXX-NXX-XXXX N=2-9, X=0-9" 
   exit 1
   else

if [[ ! "${area:0:1}" =~ [2-9] ]]; then
    echo "Invalid number.  [1]NXX-NXX-XXXX N=2-9, X=0-9"
    exit 1
fi


if [[ ! "${exchange:0:1}" =~ [2-9] ]]; then
    echo "Invalid number.  [1]NXX-NXX-XXXX N=2-9, X=0-9"
    exit 1
fi
   
   fi
   echo "$cleanedNum"

     
  }

   main "$@"


