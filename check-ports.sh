#!/bin/bash

check-port() {
  local port=$1
  local host=${2:-"localhost"}

  if nc -z "$host" "$port"; then
    echo "Port $port is open on $host!"
  else
    echo "Port $port is closed on $host!"
  fi
}

# List of ports to check
ports=(80 443 22 53)

# Check each port in the list
for port in "${ports[@]}"; do
  check-port "$port"
done
```
