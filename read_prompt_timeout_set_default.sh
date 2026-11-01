#!/bin/bash

# Script demonstrating read with default values

# Using -p flag for prompt and providing default with || operator
read -p "Enter your country (default: USA): " country
country=${country:-USA}
echo "Country set to: $country"

# Another example with a default value
read -p "Enter your preferred programming language (default: Bash): " language
language=${language:-Bash}
echo "Programming language set to: $language"

# Combining with a timeout using -t option
echo "Quick response needed:"
read -t 5 -p "What is your favorite color? (You have 5 seconds, default: Blue): " color
color=${color:-Blue}
echo "Favorite color set to: $color"