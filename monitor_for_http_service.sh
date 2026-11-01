#!/bin/bash

# Check if the service at localhost:8000 is responding
if curl -s --head http://localhost:8000 | grep "200 OK" > /dev/null; then
  echo "Service Status: UP"
else
  echo "Service Status: DOWN"
fi