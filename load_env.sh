#!/bin/bash
# Script to load environment variables from a .env file

ENV_FILE=".env"

if [[ -f "$ENV_FILE" ]]; then
  echo "Loading environment variables from $ENV_FILE"

  # Read each line from the .env file
  while IFS= read -r line || [[ -n "$line" ]]; do
    # Skip comments and empty lines
    if [[ $line =~ ^# ]] || [[ -z $line ]]; then
      continue
    fi

    # Export the variable if it starts with "export "
    if [[ $line == export* ]]; then
      # Remove the "export " prefix and export the variable
      eval "${line}"
      echo "Exported: ${line#export }"
    fi
  done < "$ENV_FILE"

  echo "Environment variables loaded successfully"
else
  echo "Error: $ENV_FILE file not found"
  exit 1
fi