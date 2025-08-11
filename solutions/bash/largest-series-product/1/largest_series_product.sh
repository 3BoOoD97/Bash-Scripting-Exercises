#!/usr/bin/env bash


   main () {

sequence=$1
span=$2

if (( span < 0 )); then
  echo "span must not be negative"
  exit 1
fi

if (( span > ${#sequence} )); then
  echo "span must not exceed string length"
  exit 1
fi

if [[ ! $sequence =~ ^[0-9]+$ ]]; then
  echo "input must only contain digits"
  exit 1
fi

if (( span == 0 )); then
  echo 1
  exit 0
fi

biggest=0

for (( i=0; i <= ${#sequence} - span; i++ )); do
    part=${sequence:$i:$span}   
    mult=1
    idx=0
    while (( idx < span )); do  
        digit=${part:$idx:1}
        mult=$(( mult * digit ))
        ((idx++))
    done
    if (( mult > biggest )); then
        biggest=$mult
    fi
done

echo "$biggest"

}

   main "$@"

