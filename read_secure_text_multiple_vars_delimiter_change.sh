	#!/bin/bash

# Script demonstrating secure input and multiple variable reading

# Secure input reading with -s flag (no echo)
echo "Secure Input Example:"
read -p "Username: " username
read -s -p "Password: " password
echo # Add a newline after password input
echo "Username entered: $username"
echo "Password length: ${#password} characters"

# Reading multiple variables at once
echo -e "\nMultiple Variable Example:"
read -p "Enter first name, last name, and age (separated by spaces): " first_name last_name age

echo "First name: $first_name"
echo "Last name: $last_name"
echo "Age: $age"	

# Reading with a custom delimiter
echo -e "\nCustom Delimiter Example:"
read -p "Enter comma-separated values: " -d "," value1
echo # Add a newline
echo "First value before comma: $value1"

echo -e "\nThank you for completing this lab on Linux input reading!"