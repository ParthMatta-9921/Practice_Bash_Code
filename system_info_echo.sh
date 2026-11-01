#!/bin/bash

# This is a simple script that displays system information

echo "Welcome to the System Information Script"
echo "--------------------------------------"
echo "Current User: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Directory: $(pwd)"
echo "Kernel version: $(uname -r)"
echo "Date and Time: $(date)"
echo "--------------------------------------"
echo "Thank you for using this script!"