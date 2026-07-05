#!/bin/sh

# Pull artixsetup folder from Github
git clone https://github.com/djsaxy/artixsetup.git ~/

# Add basic packages
doas pacman -Syu vim ranger fastfetch
echo "fastfetch" >> ~/.bashrc

# Setup doas
chmod +x ./artixsetup/doassetup.sh
./artixsetup/doassetup.sh

# Setup ufw
chmod +x ./artixsetup/ufw.sh
./artixsetup/ufw.sh

# Setup ssh
chmod +x ./artixsetup/ssh.sh
./artixsetup/ssh.sh

# Prompt for tailscale.sh

# Prompt for syncthing.sh

# Prompt for windowmanager.sh
