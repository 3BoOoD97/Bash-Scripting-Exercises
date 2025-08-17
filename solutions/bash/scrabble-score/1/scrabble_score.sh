#!/usr/bin/env bash


   main () {

    input=$1

    sum=0
    for (( i=0; i<${#input}; i++)); do
    alpha=${input:$i:1}

    case $alpha in 

    [AEIOULNRSTaeioulnrst])
    (( sum++ ));;

    [DGdg])
(( sum += 2 ));;

    [BCMPbcmp])
(( sum += 3 ));;

    [FHVWYfhvwy])
(( sum += 4 ));;

    [Kk])
(( sum += 5 ));;

    [JXjx])
(( sum += 8 ));;
    
    [QZqz])
(( sum += 10 ));;

    esac
    done

    echo "$sum"
  }


   main "$@"
