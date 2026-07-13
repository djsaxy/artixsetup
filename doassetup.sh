#!/bin/sh

# Remove sudo
doas pacman -Rdd sudo --noconfirm
doas sed -i 's/IgnorePkg =/IgnorePkg = sudo/' /etc/pacman.conf

# Add wheel to doas permissions and change doas.conf permissions
doas sed -i 's/permit persist :wheel/permit persist keepenv :wheel/' /etc/doas.conf
doas chown -c root:root /etc/doas.conf
doas chmod -c 0400 /etc/doas.conf

# Add alias for sudo
echo "alias sudo='doas'" >> ~/.bashrc

