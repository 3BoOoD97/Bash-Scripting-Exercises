#!/usr/bin/env bash

main() {
  word=${1,,}


  word=$(echo "$word" | tr -d ' -')

  arr=""

  is_isogram=true

  if [[ -n "$word" ]]; then
    for (( c=0; c<${#word}; c++ )); do
      ch=${word:c:1}
      found=false

      for (( i=0; i<${#arr}; i++ )); do
        if [[ ${arr:i:1} == "$ch" ]]; then
          found=true
          is_isogram=false
          break
        fi
      done

      if ! $found; then
        arr+="$ch"
      else
        break
      fi
    done
  fi

  $is_isogram && echo true || echo false
}

main "$@"