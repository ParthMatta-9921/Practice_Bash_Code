#!/bin/bash

# Enhanced script with a loop for multiple inputs
echo "Enter multiple inputs (type 'exit' to quit):"

while true; do
  # Prompt for input
  echo -n "> "
  read input

  # Check if user wants to exit
  if [[ "$input" == "exit" ]]; then
    echo "Exiting the input reader."
    break
  fi

  # Process the input
  echo "You entered: $input"
done

echo "Thank you for using the input reader!"