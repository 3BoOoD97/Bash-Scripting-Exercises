#!/usr/bin/env bash


   main () {

    seq=$1
    n=$2

    if [ -z "$seq" ];then
    echo "series cannot be empty"
    exit 1

    elif [ $n -lt 0 ]; then
    echo "slice length cannot be negative"
    exit 1

     elif [ $n -eq 0 ]; then
    echo "slice length cannot be zero"
    exit 1

    elif [ ${#seq} -lt $n ]; then
     echo "slice length cannot be greater than series length"
    exit 1

    else

  local parts=()   

  for (( c=0; c<=${#seq}-n; c++ )); do
    parts+=( "${seq:c:n}" )
  done

  echo "${parts[*]}"

  fi
    
   }

  main "$@"


