#!/bin/zsh

# Base delay time in seconds
BASE_DELAY=2

echo "Starting script with calculated delays..."

# Using the base delay
echo "Waiting for the base delay (${BASE_DELAY} seconds)..."
sleep $BASE_DELAY
echo "Base delay completed."

# Double the base delay
DOUBLE_DELAY=$((BASE_DELAY * 2))
echo "Waiting for double the base delay (${DOUBLE_DELAY} seconds)..."
sleep $DOUBLE_DELAY
echo "Double delay completed."

# Half the base delay
HALF_DELAY=$(echo "scale=1; $BASE_DELAY / 2" | bc)
echo "Waiting for half the base delay (${HALF_DELAY} seconds)..."
sleep $HALF_DELAY
echo "Half delay completed."

echo "Script execution complete."