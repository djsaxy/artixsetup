#!/bin/sh

# Update system
doas pacman -Syu

# Install dependencies
doas pacman -S --needed xorg-server xorg-xinit xorg-xinput xorg-xrandr xorg-xsetroot xorg-xset xorg-xprop xorg-xdpyinfo redshift brightnessctl pipewire-dinit pipewire-pulse-dinit wireplumber-dinit pipewire-alsa pipewire-jack turnstile turnstile-dinit alsa-utils alsa-firmware

doas dinitctl enable turnstiled
dinitctl enable pipewire
dinitctl enable pipewire-pulse
dinitctl enable wireplumber
read -p "Check for errors, then press any key to continue."

# Install window manager and packages
doas pacman -S --needed --noconfirm bspwm sxhkd rofi nautilus

# Move dots
mkdir -p ~/.config
mv ~/artixsetup/bspwm ~/.config
mv ~/artixsetup/sxhkd ~/.config
mv ~/artixsetup/suckless ~/.config

# Make bspwmrc executable
chmod +x ~/.config/bspwm/bspwmrc

# Install slock and st
cd ~/.config/suckless/slock
doas make clean install
cd ~/.config/suckless/st
doas make clean install
cd
