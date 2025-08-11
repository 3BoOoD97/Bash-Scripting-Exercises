#!/usr/bin/env bash

main () {
    begning=$1
    end=$2

    verses=(
#1
"This is the house that Jack built."
#2
"This is the malt
that lay in the house that Jack built."
#3
"This is the rat
that ate the malt
that lay in the house that Jack built."
#4
"This is the cat
that killed the rat
that ate the malt
that lay in the house that Jack built."
#5
"This is the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built."
#6
"This is the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built."
#7
"This is the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built."
#8
"This is the man all tattered and torn
that kissed the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built."
#9
"This is the priest all shaven and shorn
that married the man all tattered and torn
that kissed the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built."
#10
"This is the rooster that crowed in the morn
that woke the priest all shaven and shorn
that married the man all tattered and torn
that kissed the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built."
#11
"This is the farmer sowing his corn
that kept the rooster that crowed in the morn
that woke the priest all shaven and shorn
that married the man all tattered and torn
that kissed the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built."
#12
"This is the horse and the hound and the horn
that belonged to the farmer sowing his corn
that kept the rooster that crowed in the morn
that woke the priest all shaven and shorn
that married the man all tattered and torn
that kissed the maiden all forlorn
that milked the cow with the crumpled horn
that tossed the dog
that worried the cat
that killed the rat
that ate the malt
that lay in the house that Jack built."
    )

    if [[ $begning -lt 1 || $begning -gt 12 ||  $end -gt 12 || $end -lt 1 ]]; then
    echo"invalid"
    exit 1
    else
    for (( i=begning-1; i<=end-1; i++ )); do
        echo "${verses[i]}"
        if [[ $i -lt $((end-1)) ]]; then
            echo
        fi
    done
    fi
}

main "$@"
