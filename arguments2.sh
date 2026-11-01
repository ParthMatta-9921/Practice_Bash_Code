#!/bin/bash

echo "Total number of arguments: $#"
echo " All arguments:"
count=1
for arg in "$@";do
    echo "Argument $count: $arg"
    count=$((count+1)) #arithmetic used here
done