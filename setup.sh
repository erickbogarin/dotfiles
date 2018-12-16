#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Install fonts
cp fonts/* ~/.local/share/fonts
fc-cache -vf ~/.local/share/fonts/

./os/main.sh