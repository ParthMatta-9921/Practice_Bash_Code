#!/bin/bash

echo "Running a successful background task..."
./success_task.sh &
wait
# has exit 0 so success
wait_status=$? 
echo "Wait returned with status: $wait_status"

if [ $wait_status -eq 0 ]; then
  echo "The background task succeeded!"
else
  echo "The background task failed with status: $wait_status"
fi

echo ""
echo "Running a failing background task..."
./fail_task.sh &
pid=$!
wait $pid # checking for specifically this task hat has exit code 1 or exit 1

wait_status=$?
echo "Wait returned with status: $wait_status"

if [ $wait_status -eq 0 ]; then
  echo "The background task succeeded!"
else
  echo "The background task failed with status: $wait_status"
fi