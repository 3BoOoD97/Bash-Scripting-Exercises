#!/usr/bin/env bash


   main () {
  local num="$1"


  local actions=()

  if (( num & 1 )); then
    actions+=("wink")
  fi

  if (( num & 2 )); then
    actions+=("double blink")
  fi

  if (( num & 4 )); then
    actions+=("close your eyes")
  fi

  if (( num & 8 )); then
    actions+=("jump")
  fi


    if (( num & 16 )); then

        local rev=()
    for (( i=${#actions[@]}-1; i>=0; i-- )); do
      rev+=("${actions[i]}")
    done
    actions=("${rev[@]}")
  fi

IFS=','; echo "${actions[*]}"

}

main "$@"


