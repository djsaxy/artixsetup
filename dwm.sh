#!/bin/bash

# Install DWM
cd ~/.config/suckless/dwm
sudo make clean install
cd ~/.config/suckless/dmenu
sudo make clean install
cd ~/.config/suckless/st
sudo make clean install
cd ~/.config/suckless/slock
sudo make clean install
chmod +x slock.sh
