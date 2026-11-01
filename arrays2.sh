#!/bin/bash

names=("Alice" "Bob")
names+=("Charlie")

echo "All Names: ${names[@]}"

echo "--- Processing Names ---"
for name in "${names[@]}"; do
  echo "Hello, $name"
done