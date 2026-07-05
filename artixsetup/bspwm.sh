#!/bin/sh

# Update system
doas pacman -Syu

# Install dependencies
doas pacman -S --needed --noconfirm xorg-server xorg-xinit xorg-xinput xorg-xrandr xorg-xsetroot xorg-xset xorg-xprop xorg-xdpyinfo redshift brightnessctl pipewire pipewire-dinit pipewire-pulse pipewire-pulse-dinit wireplumber wireplumber-dinit pipewire-alsa pipewire-jack turnstile turnstile-dinit alsa-utils alsa-firmware

doas dinitctl enable turnstiled
dinitctl enable pipewire
dinitctl enable pipewire-pulse
dinitctl enable wireplumber

# Install bspwm, sxhkd, wezterm
doas pacman -S --needed --noconfirm bspwm sxhkd rofi nautilus

# Configure
# cd
# mkdir ~/.config/bspwm
# mkdir ~/.config/sxhkd

# Configure and/or clone ~/.config/bspwm/bspwmrc

# Make bspwmcr executable
chmod +x ~/.config/bspwm/bspwmrc

# Configure and/or clone ~/.config/sxhkd/sxhkdrc

# Clone and Install slock/st
# mkdir -p ~/.config/slock
# git clone https://github.com/djsaxy/dots/tree/main/.config/suckless/slock ~/.config/slock
cd ~/.config/suckless/slock
doas make clean install
cd ~/.config/suckless/st
doas make clean install
