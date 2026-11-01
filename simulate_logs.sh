#!/bin/bash
LOG_FILE=~/project/application.log

# Initialize log file
echo "Starting log simulation" > $LOG_FILE

# Generate simulated log entries
for i in {1..10}; do
  echo "[$(date)] - INFO: Normal operation $i" >> $LOG_FILE
  sleep 1

  # Occasionally generate an error
  if ((i % 3 == 0)); then
    echo "[$(date)] - ERROR: Something went wrong!" >> $LOG_FILE
  fi
done

echo "Log simulation complete" >> $LOG_FILE

# use watch -n 1 "grep ERROR application.log || echo 'No errors found'" for checking logs in real time