#!/usr/bin/env bash


  main () {

items=("$@")

if [[ -z "$items" ]]; then
echo ""
else

for ((i=0; i<${#items[@]}-1; i++)); do
  echo "For want of a ${items[i]} the ${items[i+1]} was lost."
done

echo "And all for the want of a ${items[0]}."
fi
  }
   main "$@"

