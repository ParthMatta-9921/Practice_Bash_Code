#!/bin/bash

LOG_FILE="/var/log/auth.log"
FAILURE_COUNT=$(sudo grep -c "authentication failure" $LOG_FILE)

echo "--- Authentication Log Monitor ---"
if [ "$FAILURE_COUNT" -gt 0 ]; then
  echo "WARNING: Found $FAILURE_COUNT failed login attempts."
else
  echo "OK: No failed login attempts found."
fi
echo "--------------------------------"