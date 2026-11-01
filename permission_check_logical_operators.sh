#!/bin/bash

# This script checks read and write permissions on a file
# using logical operators

filename="kings_gauntlet.txt"

if [[ -r "$filename" ]] && [[ -w "$filename" ]]; then
  echo "You have read and write permissions on $filename."
elif [[ -r "$filename" ]] || [[ -w "$filename" ]]; then
  echo "You have limited permissions on $filename."
else
  echo "You do not have permissions on $filename."
fi