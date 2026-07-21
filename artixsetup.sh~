#!/bin/sh

# Files will need to be either cloned from git or moved onto the machine some other way
# doas pacman -Syu --needed --noconfirm git
# git clone https://github.com/djsaxy/artixsetup.git ~/

# Add basic packages
doas pacman -Syu  --needed --noconfirm vim ranger fastfetch
echo "fastfetch" >> ~/.bashrc

# Setup doas
chmod +x ~/artixsetup/doassetup.sh
~/artixsetup/doassetup.sh

# Setup ufw
chmod +x ~/artixsetup/ufw.sh
~/artixsetup/ufw.sh

# Setup ssh
chmod +x ~/artixsetup/ssh.sh
~/artixsetup/ssh.sh

# Prompt for tailscale.sh

# Prompt for syncthing.sh

# Prompt for windowmanager.sh
read -p "Install Window Manager? <y/N>" prompt
    if [[ $prompt =~ [yY]* ]]; then
	chmod +x ~/artixsetup/windowmanager.sh
	~/artixsetup/windowmanager.sh
    fi
