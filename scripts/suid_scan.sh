#!/bin/bash
# Find SUID files owned by root

echo "=== Searching for SUID files ==="
sudo find / -user root -perm -4000 -exec ls -ldb {} \; 2>/dev/null
