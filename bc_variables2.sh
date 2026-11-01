#!/bin/zsh

# Script to demonstrate using variables within bc

bc << EOF
scale=2
radius = 5
height = 10
pi = 3.14159

# Calculate cylinder volume
volume = pi * radius^2 * height
print "Volume: ", volume, " cubic units\n"

# Calculate cylinder surface area
surface_area = 2 * pi * radius^2 + 2 * pi * radius * height
print "Surface Area: ", surface_area, " square units\n"
EOF