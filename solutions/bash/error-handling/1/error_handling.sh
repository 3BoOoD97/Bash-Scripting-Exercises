#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: error_handling.sh <person>"
  exit 1
fi

UserName="$1"

echo "Hello, $UserName"
