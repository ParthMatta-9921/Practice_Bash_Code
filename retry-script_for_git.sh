#!/bin/bash
# Simple retry script for Git operations

MAX_RETRIES=3
RETRY_DELAY=5

for ((i = 1; i <= MAX_RETRIES; i++)); do
  echo "Attempt $i of $MAX_RETRIES"
  git "$@" && break

  if [ $i -lt $MAX_RETRIES ]; then
    echo "Command failed, retrying in $RETRY_DELAY seconds..."
    sleep $RETRY_DELAY
  else
    echo "Maximum retries reached. Command failed."
    exit 1
  fi
done