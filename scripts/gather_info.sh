#!/bin/bash
# Gather basic system information

echo "=== Distribution Info ==="
cat /etc/*release

echo -e "\n=== Kernel Info ==="
uname -a

echo -e "\n=== Current User ==="
whoami

echo -e "\n=== Uptime ==="
uptime

echo -e "\n=== /home Permissions ==="
ls -la /home

echo -e "\n=== Network Neighbors ==="
ip neigh

echo -e "\n=== Listening Services ==="
sudo ss -tlnp

echo -e "\n=== Sudo Privileges ==="
sudo -l
