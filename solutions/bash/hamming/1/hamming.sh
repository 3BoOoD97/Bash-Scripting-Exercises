#!/usr/bin/env bash

main() {
  input1=$1
  input2=$2

  if [[ $# -ne 2 ]]; then
    echo 'Usage: hamming.sh <string1> <string2>' >&2
    exit 1
  elif [[ ${#input1} -ne ${#input2} ]]; then
    echo 'strands must be of equal length' >&2
    exit 1
  fi

  match=0
  for (( c=0; c<${#input1}; c++ )); do
    if [[ "${input1:$c:1}" != "${input2:$c:1}" ]]; then
      (( match++ ))
    fi
  done

  echo "$match"
}

main "$@"
