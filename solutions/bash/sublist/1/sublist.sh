#!/usr/bin/env bash

  parse_list() {
  local raw="$1" cleaned
  cleaned=$(echo "$raw" | tr -d '[],' )  

    local _target="$2"
  eval "read -ra $_target <<< \"\$cleaned\""
}

arrays_equal() {
  local -n A=$1
  local -n B=$2
  if [[ ${#A[@]} -ne ${#B[@]} ]]; then
    return 1
  fi
  local i
  for i in "${!A[@]}"; do
    [[ ${A[$i]} == ${B[$i]} ]] || return 1
  done
  return 0
}

is_sublist() {
  local -n A=$1
  local -n B=$2
  local lenA=${#A[@]} lenB=${#B[@]}

  if [[ $lenB -eq 0 ]]; then
    return 0
  fi
  if [[ $lenB -gt $lenA ]]; then
    return 1
  fi

  local start j
  for (( start=0; start<=lenA-lenB; start++ )); do
    local ok=1
    for (( j=0; j<lenB; j++ )); do
      if [[ ${A[start+j]} != ${B[j]} ]]; then
        ok=0; break
      fi
    done
    if [[ $ok -eq 1 ]]; then
      return 0
    fi
  done
  return 1
}

main() {
  local rawSuperlist="$1"
  local rawSublist="$2"

  parse_list "$rawSuperlist" superlist
  parse_list "$rawSublist"  sublist

  if arrays_equal superlist sublist; then
    echo "equal"
    return
  fi

  if is_sublist sublist superlist; then
    echo "sublist"
    return
  fi

  if is_sublist superlist sublist; then
    echo "superlist"
    return
  fi

  echo "unequal"
}

main "$@"
