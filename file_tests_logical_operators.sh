#!/bin/bash

# This script demonstrates various file testing operators in Linux

# Check if a file exists (as a file, directory, or other type)
file_to_check="treasure_map.txt"
directory_to_check="test_dir"

echo "--- Basic File Tests ---"
# -e checks if the file exists (any type)
if [[ -e "$file_to_check" ]]; then
  echo "$file_to_check exists"
else
  echo "$file_to_check does not exist"
fi

# -f checks if it's a regular file (not a directory or device)
if [[ -f "$file_to_check" ]]; then
  echo "$file_to_check is a regular file"
fi

# -d checks if it's a directory
if [[ -d "$directory_to_check" ]]; then
  echo "$directory_to_check is a directory"
else
  echo "$directory_to_check is not a directory"
fi

echo "--- File Size Tests ---"
# -s checks if file is not empty (has a size greater than zero)
if [[ -s "$file_to_check" ]]; then
  echo "$file_to_check is not empty"
else
  echo "$file_to_check is empty"
fi

echo "--- Permission Tests ---"
# -r, -w, -x check read, write, and execute permissions
if [[ -r "$file_to_check" ]]; then
  echo "$file_to_check is readable"
fi

if [[ -w "$file_to_check" ]]; then
  echo "$file_to_check is writable"
fi

if [[ -x "$file_to_check" ]]; then
  echo "$file_to_check is executable"
else
  echo "$file_to_check is not executable"
fi

echo "--- Combining Tests with Logical Operators ---"
# Combining tests with AND (&&)
if [[ -f "$file_to_check" ]] && [[ -r "$file_to_check" ]]; then
  echo "$file_to_check is a readable file"
fi

# Combining tests with OR (||)
if [[ -f "$file_to_check" ]] || [[ -d "$file_to_check" ]]; then
  echo "$file_to_check is either a file or a directory"
fi