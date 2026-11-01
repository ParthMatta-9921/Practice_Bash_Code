#!/bin/zsh

# Define delay durations as variables
SHORT_DELAY=1
MEDIUM_DELAY=3
LONG_DELAY=5

echo "Starting the script with variable delays..."

echo "This is displayed immediately."
echo "Waiting for a short delay (${SHORT_DELAY} seconds)..."
sleep $SHORT_DELAY
echo "Short delay completed."

echo "Waiting for a medium delay (${MEDIUM_DELAY} seconds)..."
sleep $MEDIUM_DELAY
echo "Medium delay completed."

echo "Waiting for a long delay (${LONG_DELAY} seconds)..."
sleep $LONG_DELAY
echo "Long delay completed."

echo "Script execution complete."