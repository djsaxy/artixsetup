#!/bin/sh

# Setup tailscale
doas pacman -S tailscale tailscale-dinit
doas dinitctl enable tailscaled
sudo tailscale operator=$USER
tailscale up
