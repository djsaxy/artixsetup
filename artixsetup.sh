#!/bin/sh

# Add basic packages
doas pacman -Syu  --needed --noconfirm git vim ranger fastfetch
echo "fastfetch" >> ~/.bashrc

# Pull artixsetup folder from Github
git clone https://github.com/djsaxy/artixsetup.git ~/

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
