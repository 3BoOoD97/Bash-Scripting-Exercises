#!/usr/bin/env bash



#!/usr/bin/env bash

norm_word() {
  LC_ALL=C \
  printf '%s' "$1" \
    | tr '[:upper:]' '[:lower:]' \
    | fold -w1 \
    | sort \
    | tr -d '\n'
}

main() {
  local target="$1"
  local candidates_str="$2"

  local target_lc
  target_lc=$(printf '%s' "$target" | tr '[:upper:]' '[:lower:]')
  local target_norm
  target_norm=$(norm_word "$target")

  local candidates=()
  read -ra candidates <<< "$candidates_str"

  local matches=()
  local cand cand_lc cand_norm

  for cand in "${candidates[@]}"; do
    cand_lc=$(printf '%s' "$cand" | tr '[:upper:]' '[:lower:]')
    [[ "$cand_lc" == "$target_lc" ]] && continue
    cand_norm=$(norm_word "$cand")
    if [[ "$cand_norm" == "$target_norm" ]]; then
      matches+=("$cand")
    fi
  done

  if (( ${#matches[@]} )); then
    echo "${matches[*]}"
  fi

  return 0  
}

main "$@"

