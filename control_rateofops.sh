#!/bin/zsh

# Define the rate limit (operations per second)
OPERATIONS_PER_SECOND=2
SLEEP_DURATION=$(echo "scale=3; 1 / $OPERATIONS_PER_SECOND" | bc)

echo "Performing operations at a rate of $OPERATIONS_PER_SECOND per second"
echo "Each operation will be followed by a $SLEEP_DURATION second delay"

# Simulate 6 operations with rate limiting
for i in {1..6}; do
  echo "Performing operation $i at $(date +%H:%M:%S.%N | cut -c1-12)"
  # Simulate the operation
  sleep 0.1
  # Rate-limiting delay between operations	
  if [ $i -lt 6 ]; then
    sleep $SLEEP_DURATION
  fi
done

echo "All operations completed"	