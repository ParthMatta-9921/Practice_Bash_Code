#!/bin/bash
echo "Memory check at $(date)" >> ~/project/memory_log.txt
free -m >> ~/project/memory_log.txt
echo "--------------------" >> ~/project/memory_log.txt

# use crontab -e to add the 0 * * * * ~/project/memory_check.sh for every hour execution