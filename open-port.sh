#!/bin/bash

function checkPort() {
  local port=$1
  local host="localhost"

  if [ -n "$2" ]; then
    host=$2
  fi

  nc -z $host $port
  status=$?

  if [ $status -eq 0 ]; then
    echo "Port $port is open!"
  else
    echo "Port $port is closed!"
  fi
}

# list of ports
ports=(80 443 22 53)

# Check each port in the list.
for port in "${ports[@]}"; do
  checkPort $port
done
