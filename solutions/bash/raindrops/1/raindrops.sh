#!/usr/bin/env bash


   main () {
   num=$1

    str=""
if [[ "$num"%3 -eq 0 ||  "$num"%5 -eq 0 ||  "$num"%7 -eq 0 ]]; then
   if [[ "$num"%3 -eq 0 ]]; then
   str=${str}"Pling"
fi

   if [[ "$num"%5 -eq 0 ]]; then
   str=${str}"Plang"
fi

   if [[ "$num"%7 -eq 0 ]]; then
   str=${str}"Plong"
fi
   echo "$str"

else
echo "$num"

fi
  }

   main "$@"

