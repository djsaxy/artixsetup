#!/bin/bash

# Set up Artix Linux  for use with bspwm

# Update system
doas pacman -Syu

# Install pacman packages
doas pacman -S --needed git base-devel --noconfirm
# doas pacman -S --needed stow github-cli remmina freerdp

# Install yay after changing to doas from sudo
doas sed -i 's/PACMAN_AUTH=()/PACMAN_AUTH=(doas)/' /etc/makepkg.conf
echo "alias yay='yay --sudo doas --sudoflags -- --save'" >> ~/.bashrc
doas pacman -S --needed go
git clone https://aur.archlinux.org/yay.git ~/.config/yay
cd ~/.config/yay
makepkg -si
cd ~

# Install AUR packages
yay -S helium-browser-bin --noconfirm

# Make scripts executable
# chmod +x ./artixsetup/dwm.sh
chmod +x ./artixsetup/bspwm.sh
chmod +x ./artixsetup/xinitrc.sh

# Install Window Manager
# ./artixsetup/dwm.sh
./artixsetup/bspwm.sh

# Write .xintirc file
./artixsetup/xinitrc.sh
