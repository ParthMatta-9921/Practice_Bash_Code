#!/bin/bash

# This script demonstrates chaining commands with logical operators

echo "Starting command chain..."

# Create a directory and enter it only if creation succeeds
mkdir -p logic_test && cd logic_test && echo "Changed to new directory"

# Create a file and write to it only if creation succeeds
touch test_file.txt && echo "This is a test" > test_file.txt && echo "Created and wrote to file"

# Try to read a nonexistent file, or display an error message
cat nonexistent.txt || echo "Failed to read file"

# Return to the original directory
cd .. && echo "Returned to original directory"

echo "Command chain completed"