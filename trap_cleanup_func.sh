#!/bin/bash
cleanup()
{
  echo ""
  echo "cleaning up temp files..."
  rm -f temp_data.txt
  echo "cleanup complete"
  exit
}
# sigint is ctrl +c
# EXIT= any exit success or failure
trap cleanup SIGINT EXIT
touch temp_data.txt
echo "temporary file 'temp_Data.txt' created."

echo "process is running. press CTRL+C to stop..."
while true;do
  sleep 1
done