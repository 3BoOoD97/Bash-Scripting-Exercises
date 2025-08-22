#!/usr/bin/env bash


   main () {

text="$*"

trim() {
  local s="$1"
  s="${s#"${s%%[![:space:]]*}"}"
  s="${s%"${s##*[![:space:]]}"}"
  printf '%s' "$s"
}

trimmed="$(trim "$text")"

if [[ -z "$trimmed" ]]; then
  echo "Fine. Be that way!"
  exit 0
fi

is_question=false
if [[ "$trimmed" == *\? ]]; then
  is_question=true
fi

is_shouting=false
if [[ "$text" =~ [[:alpha:]] ]]; then
  letters_only="${text//[^[:alpha:]]/}"
  if [[ ! "$letters_only" =~ [[:lower:]] ]]; then
    is_shouting=true
  fi
fi

    if [[ "$is_shouting" == true && "$is_question" == true ]]; then
  echo "Calm down, I know what I'm doing!"
elif [[ "$is_shouting" == true ]]; then
  echo "Whoa, chill out!"
elif [[ "$is_question" == true ]]; then
  echo "Sure."
else
  echo "Whatever."
fi
    
  }


   main "$@"

