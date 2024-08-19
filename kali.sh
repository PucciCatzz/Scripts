#!/bin/bash

# Define new root password
NEW_ROOT_PASSWORD="toor"

# Ensure the current user is 'kali'
if [ "$(whoami)" != "kali" ]; then
  exit 1
fi

# Switch to root user and change the root password silently
echo "kali" | sudo -S su -c "
echo 'root:$NEW_ROOT_PASSWORD' | chpasswd
" > /dev/null 2>&1

# Reboot the system
sudo reboot
