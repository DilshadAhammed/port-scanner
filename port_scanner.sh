#!/bin/bash

# Simple Port Scanner
# Usage: ./port_scanner.sh <target_ip>

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <target_ip>"
    exit 1
fi

target_ip=$1

echo "Scanning ports for $target_ip..."
for port in {1..65535}; do
    (echo >/dev/tcp/$target_ip/$port) >/dev/null 2>&1 && echo "Port $port is open"
done
