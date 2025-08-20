#!/usr/bin/env bash



  main () {
str=${1^^}

str=$(echo "$str" | tr '-' ' ' | tr '_' ' ' | tr '*' ' ' )

for word in $str; do
  echo -n "${word:0:1}"
done
   }


  main "$@"

