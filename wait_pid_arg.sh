#!/bin/bash

echo "Starting background tasks..."

# Start two background tasks and capture their PIDs
./long_task.sh &
pid1=$!

./long_task.sh &
pid2=$!

echo "First process PID: $pid1"
echo "Second process PID: $pid2"

echo "Waiting for the first task to complete..."
wait $pid1
echo "First task has completed!"

echo "Waiting for the second task to complete..."
wait $pid2
echo "Second task has completed!"