#!/usr/bin/env bash

main () {
  type=$1
  input=$2
  result=0
  sum_of_squares=0
  square_of_sum=0

  case $type in
    sum_of_squares)
      for (( i=1 ; i <= input ; i++ )); do
        result=$(( result + i * i ))
      done
      ;;
      
    square_of_sum)
      for (( i=1 ; i <= input ; i++ )); do
        result=$(( result + i ))
      done
      result=$(( result * result ))
      ;;

    difference)
      for (( i=1 ; i <= input ; i++ )); do
        sum_of_squares=$(( sum_of_squares + i * i ))
        square_of_sum=$(( square_of_sum + i ))
      done
      square_of_sum=$(( square_of_sum * square_of_sum ))
      result=$(( square_of_sum - sum_of_squares ))
      ;;
  esac

  echo "$result"
}

main "$@"
