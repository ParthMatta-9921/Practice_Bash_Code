#!/bin/bash
echo "Random number: $((RANDOM % 100 + 1))" > ~/project/number.txt
cat ~/project/number.txt