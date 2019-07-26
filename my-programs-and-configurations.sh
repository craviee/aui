#!/bin/bash

# Installing official programs
sudo pacman -Syu --noconfirm \
xclip \
deepin-music \
deepin-screenshot \
termite \
tmux \
gimp \
htop \
gedit \
libreoffice-still \
mpv \
ranger \
feh \
expac \
yajl \
gnupg 

# Installing pacaur using yay
yay -S pacaur

# Removing yay
pacman -Rs yay

# Installing AUR programs
pacaur -S \
brave \
discord \
foxitreader \
code
