#!/usr/bin/env bash



   main () {
input="$1"

count=$(
  printf '%s' "$input" \
    | tr '[:upper:]' '[:lower:]' \
    | tr -cd 'a-z' \
    | fold -w1 \
    | sort -u \
    | wc -l
)

if [[ $count -eq 26 ]]; then
  echo "true"
else
  echo "false"
fi
  }

   main "$@"

