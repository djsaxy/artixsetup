#!/bin/sh

# Install and set up ssh
doas pacman -S openssh openssh-dinit --needed --noconfirm
doas dinitctl enable sshd
doas ufw allow ssh
