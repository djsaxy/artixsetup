#!/bin/bash

# Set up Artix Linux for use with bspwm

# Install pacman packages
doas pacman -S --needed --noconfirm base-devel
# doas pacman -S --needed --noconfirm  stow github-cli 

# Ask if remote desktop is needed
read -p "Remote desktop needed? <y/N>" prompt
    if [[ $prompt =~ [yY]* ]] then
	doas pacman -S --needed --noconfirm remmina freerdp
    fi

# Install yay after changing to doas from sudo
doas sed -i 's/PACMAN_AUTH=()/PACMAN_AUTH=(doas)/' /etc/makepkg.conf
echo "alias yay='yay --sudo doas --sudoflags -- --save'" >> ~/.bashrc
doas pacman -S --needed --noconfirm go
git clone https://aur.archlinux.org/yay.git ~/.config/yay
cd ~/.config/yay
makepkg -si
cd

# Install browser(s)
yay -S --noconfirm helium-browser-bin
read -p "Install Google Chrome? <y/N>" prompt
    if [[ $prompt =~ [yY]* ]]; then
	yay -S --noconfirm google-chrome
	echo "\n\n# Chrome\nsuper + shift\n    google-chrome" >> ~/artixsetup/sxhkd/sxhkdrc
    fi

# Make scripts executable
# chmod +x ~/artixsetup/dwm.sh
chmod +x ~/artixsetup/bspwm.sh
chmod +x ~/artixsetup/xinitrc.sh

# Install Window Manager
# ~/artixsetup/dwm.sh
~/artixsetup/bspwm.sh

# Write .xintirc file
~/artixsetup/xinitrc.sh
