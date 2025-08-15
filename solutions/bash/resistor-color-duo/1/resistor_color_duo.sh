#!/usr/bin/env bash


  main () {

    color1=$1
    color2=$2

    colors=("black" "brown" "red" "orange" "yellow" "green" "blue" "violet" "grey" "white")

    sum=0
   
foundColor1=false
foundColor2=false


    for (( c=0; c<${#colors[@]}; c++ )); do
    if [[ $color1 == ${colors[$c]} ]]; then
        sum=$((sum + c * 10))
        foundColor1=true
    fi

    if [[ $color2 == ${colors[$c]} ]]; then
        sum=$((sum + c))
        foundColor2=true
    fi
done


if [[ $foundColor1 == true && $foundColor2 == true ]]; then
echo "$sum"

else
echo "invalid color"
exit 1
fi
    
  }

   main "$@"

