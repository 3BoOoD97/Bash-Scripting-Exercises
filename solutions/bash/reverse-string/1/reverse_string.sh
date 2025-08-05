#!/usr/bin/env bash

# your main function code here
  main () {
  input=$1
  rav=$(echo "$input" | rev)
   echo "$rav"
   }
#
#   # call main with all of the positional arguments
  main "$@"

