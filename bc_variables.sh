#!/bin/zsh

# Script to demonstrate using variables in bc

# Define input values
radius=5
height=10

# Calculate cylinder volume (π * r² * h)
volume=$(echo "scale=2; 3.14159 * $radius * $radius * $height" | bc)

# Calculate cylinder surface area (2π * r² + 2π * r * h)
surface_area=$(echo "scale=2; 2 * 3.14159 * $radius * $radius + 2 * 3.14159 * $radius * $height" | bc)

# Display results
echo "Cylinder properties with radius $radius and height $height:"
echo "Volume: $volume cubic units"
echo "Surface Area: $surface_area square units"