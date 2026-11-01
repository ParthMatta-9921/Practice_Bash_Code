#!/bin/bash
trap 'echo "Received SIGHUP (1)"; exit 0' SIGHUP
trap 'echo "Received SIGINT (2)"; exit 0' SIGINT
trap 'echo "Received SIGTERM (15)"; exit 0' SIGTERM

echo "Process started with PID $$"
echo "Use: pkill -[signal] -f signal_handler.sh to send signals"
while true; do
  sleep 1
done	