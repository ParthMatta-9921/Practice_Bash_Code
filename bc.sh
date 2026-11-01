#!/bin/zsh

# Complex calculation using bc with scale
result=$(echo "scale=2; (10.5 * 4.2) - (5.5 / 2) + 3^2" | bc)
echo "Result: $result"

# Breaking down the calculation
part1=$(echo "scale=2; 10.5 * 4.2" | bc)
part2=$(echo "scale=2; 5.5 / 2" | bc)
part3=$(echo "3^2" | bc)

echo "Part 1 (10.5 * 4.2): $part1"
echo "Part 2 (5.5 / 2): $part2"
echo "Part 3 (3^2): $part3"
echo "Final: $part1 - $part2 + $part3 = $(echo "scale=2; $part1 - $part2 + $part3" | bc)"