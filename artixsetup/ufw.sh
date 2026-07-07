#!/bin/sh

# Install and set up ufw
doas pacman -S ufw ufw-dinit --needed --noconfirm
doas dinitctl enable ufw
