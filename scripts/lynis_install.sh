#!/bin/bash
# Download and install Lynis using wget

cd /tmp || exit

echo "=== Installing wget if missing ==="
sudo apt-get install -y wget

echo "=== Downloading Lynis ==="
wget https://downloads.cisofy.com/lynis/lynis-3.0.6.tar.gz

echo "=== Verifying checksum ==="
sha256sum lynis-3.0.6.tar.gz

echo "=== Extracting ==="
tar xfv lynis-3.0.6.tar.gz

cd lynis || exit
echo "=== Running Lynis audit ==="
sudo ./lynis audit system
