#!/bin/bash
# A simple script to download files from a list
if [ -f "$1" ]; then
  echo "Downloading files from list: $1"
  wget -i "$1"
else
  echo "Error: File $1 not found"
  exit 1
fi