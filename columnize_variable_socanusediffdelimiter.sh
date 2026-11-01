#!/bin/bash
# A script to columnize text files

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <filename> <delimiter>"
  echo "Example: $0 data.txt :"
  exit 1
fi

# Extract arguments
FILENAME=$1
DELIMITER=$2

# Check if the file exists
if [ ! -f "$FILENAME" ]; then
  echo "Error: File '$FILENAME' does not exist"
  exit 1
fi

# Format and output the content
column -t -s "$DELIMITER" "$FILENAME"	:	