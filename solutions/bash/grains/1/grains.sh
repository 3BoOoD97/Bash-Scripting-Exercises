#!/usr/bin/env bash

main() {
  numberOfGrains="$1"

  if [[ -z "$numberOfGrains" ]]; then
    echo "Error: invalid input"
    exit 1
  fi

  if [[ "$numberOfGrains" == "total" ]]; then
    result=0
    for (( c=1; c<=64; c++ )); do
      val=$(echo "2^($c-1)" | bc)
      result=$(echo "$result + $val" | bc)
    done
    echo "$result"

  elif [[ "$numberOfGrains" =~ ^[0-9]+$ ]] && (( numberOfGrains >= 1 && numberOfGrains <= 64 )); then
    echo "$(echo "2^($numberOfGrains-1)" | bc)"

  else
    echo "Error: invalid input"
    exit 1
  fi
}

main "$@"
