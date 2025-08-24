#!/usr/bin/env bash



main () {
    num=$1


    if [[ $num -lt 1 ]]; then
    echo "Classification is only possible for natural numbers."
    exit 1
    fi

   if [[ $num -eq 1 ]]; then
        echo "deficient"
        exit 0
    fi

    sum=1  

    limit=$(awk -v n="$num" 'BEGIN{printf "%d", sqrt(n)}')

    for (( c=2; c<=limit; c++ )); do
        if (( num % c == 0 )); then
            pair=$(( num / c ))
            (( sum += c ))
            if (( pair != c && pair != num )); then
                (( sum += pair ))
            fi
        fi
    done

    if [[ $sum -eq $num ]]; then
        echo "perfect"
    elif [[ $sum -gt $num ]]; then
        echo "abundant"
    else
        echo "deficient"
    fi
}
 
    




   main "$@"

