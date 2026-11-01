#!/bin/bash
# Demonstrating exit status codes

# Check if a filename was provided as an argument
if [ $# -eq 0 ]; then
  echo "Error: No filename provided"
  echo "Usage: $0 <filename>"
  # Exit with status 1 (general error)
  exit 1
fi

filename=$1

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "Error: File '$filename' not found"
  # Exit with status 2 (file not found)
  exit 2
fi

# Check if the file is readable
if [ ! -r "$filename" ]; then
  echo "Error: File '$filename' is not readable"
  # Exit with status 3 (permission denied)
  exit 3
fi

# If we get here, everything is fine
echo "File '$filename' exists and is readable"
# Exit with status 0 (success)
exit 0