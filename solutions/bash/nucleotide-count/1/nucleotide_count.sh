#!/usr/bin/env bash


   main () {
    
   DNAsequence=$1
   
    declare -A counts=([A]=0 [C]=0 [G]=0 [T]=0)


    for (( c=0; c<${#DNAsequence}; c++ )); do
    if [[ ${DNAsequence:$c:1} =~ 'A' ]]; then
((counts[A]++))

elif
[[ ${DNAsequence:$c:1} =~ 'C' ]]; then
((counts[C]++))
elif
[[ ${DNAsequence:$c:1} =~ 'G' ]]; then
((counts[G]++))
elif
[[ ${DNAsequence:$c:1} =~ 'T' ]]; then
((counts[T]++))


else
echo "Invalid nucleotide in strand"
exit 1
fi
done

echo "A: ${counts[A]}"
echo "C: ${counts[C]}"
echo "G: ${counts[G]}"
echo "T: ${counts[T]}"
  }

   main "$@"


