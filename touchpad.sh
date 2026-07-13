#!/bin/bash

sudo pacman -S libinput libinput-tools xf86-input-libinput --noconfirm --needed

echo -e 'Section "Input Class"\n\tIdentifier "libinput touchpad catchall"\n\tMatchIsTouchpad "on"\n\tMatchDevicePath "/dev/input/event*"\n\tDriver "libinput"\n\tOption "Tapping" "on"\n\tOption "TappingDrag" "on"\n\tOption "TappingButtonMap" "lrm"\n\t"Option "DisableWhileTyping" "1"\nEndSection' >> 40-libinput.conf
sudo mv 40-libinput.conf /etc/X11/xorg.conf.d
