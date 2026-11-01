#!/bin/bash
# Demonstrating conditional execution using exit status

echo "Starting conditional execution test"

# Create a test directory
mkdir -p test_dir && echo "Directory created successfully" || echo "Failed to create directory"

# Try to create it again (this should "fail" since it already exists)
mkdir test_dir && echo "Directory created successfully" || echo "Failed to create directory"

# Check if a file exists and create it if it doesn't
[ -f test_file.txt ] && echo "File exists" || (echo "Creating file" && touch test_file.txt)

# Check again - now the file should exist
[ -f test_file.txt ] && echo "File exists" || echo "File doesn't exist"

# Example of using exit status with functions
check_number() {
  if [ $1 -gt 10 ]; then
    echo "Number is greater than 10"
    return 0 # Success
  else
    echo "Number is less than or equal to 10"
    return 1 # Failure
  fi
}

# Test the function with different values
check_number 5 && echo "Success case" || echo "Failure case"
check_number 15 && echo "Success case" || echo "Failure case"

echo "Test completed"	