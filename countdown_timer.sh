#!/bin/zsh

# Function to display a countdown
countdown() {
  local seconds=$1
  while [ $seconds -gt 0 ]; do
    echo -ne "\rTime remaining: $seconds seconds "
    sleep 1
    ((seconds--))
  done
  echo -e "\rCountdown complete!            "
}

# Specify the countdown duration
echo "Starting a 5-second countdown:"
countdown 5
echo "Countdown script execution complete."