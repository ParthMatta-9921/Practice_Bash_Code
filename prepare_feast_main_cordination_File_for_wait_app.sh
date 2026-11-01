#!/bin/bash

echo "=== Preparation Ceremony Started ==="
echo "Starting all preparation tasks..."

# Start the preparations in the background
./decorate_hall.sh &
decoration_pid=$!

./cook_feast.sh &
cooking_pid=$!

echo "All tasks started. Waiting for completion..."

# Wait for decoration to finish
wait $decoration_pid
decoration_status=$?

if [ $decoration_status -eq 0 ]; then
  echo "Decoration completed successfully."
else
  echo "Error: Decoration failed with status $decoration_status"
  exit 1
fi

# Wait for cooking to finish
wait $cooking_pid
cooking_status=$?

if [ $cooking_status -eq 0 ]; then
  echo "Cooking completed successfully."
else
  echo "Error: Cooking failed with status $cooking_status"
  exit 1
fi

# All preparations completed successfully
echo "=== All preparations completed successfully! ==="
echo "The ceremony can now begin."

# Create a verification file to indicate successful completion
echo "decoration_status=$decoration_status" > preparation_results.txt
echo "cooking_status=$cooking_status" >> preparation_results.txt
echo "overall_status=0" >> preparation_results.txt

exit 0