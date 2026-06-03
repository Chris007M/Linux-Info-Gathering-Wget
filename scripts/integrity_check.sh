#!/bin/bash
# Verify package integrity using dpkg and debsums

echo "=== Installed Packages ==="
dpkg -l | head -20

echo -e "\n=== Coreutils Files ==="
dpkg -L coreutils

echo -e "\n=== Checking with debsums ==="
sudo apt-get install -y debsums
debsums -cs coreutils

echo -e "\n=== dpkg Verify ==="
dpkg --verify coreutils
