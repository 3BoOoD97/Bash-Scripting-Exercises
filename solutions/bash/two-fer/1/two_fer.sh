#!/usr/bin/env bash


   main () {
UserName=$1

if [ -z "$UserName" ]; then
    echo "One for you, one for me."

  else
    echo "One for $UserName, one for me."
  fi
  }
#
#   # call main with all of the positional arguments
   main "$@"
