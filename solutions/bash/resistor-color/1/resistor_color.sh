#!/usr/bin/env bash



   main () {
   arg1=$1
   arg2=$2

 colors=("black" "brown" "red" "orange" "yellow" "green" "blue" "violet" "grey" "white")

  sum=0
 # echo "Shell: $(ps -p $$ -o comm=)"
  if [[ "$arg1" == "colors" ]]; then
    local c
    for c in "${colors[@]}"; do
      echo "$c"
    done

 
 elif [[ $arg1 == "code" ]]; then
 for(( c=0 ; c<${#colors[@]}; c++))
 do
 if [[ $arg2 == ${colors[$c]} ]]; then
 echo "$c"
fi
 done
 fi


 }

   main "$@"
