#!/bin/bash

# Simple Port Scanner
# Usage: ./port_scanner.sh <target_ip>
target_ip=$1
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <target_ip>"
    exit 1

else
  echo "Scanning ports for $target_ip..."
  nc -nvz $1 1-65535 > $1.txt 2>&1
fi
tac $1.txt
rm -rf $1.txt











