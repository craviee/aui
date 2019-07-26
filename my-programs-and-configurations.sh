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
gnupg \
scrot 

# Installing pacaur using yay
yay -S pacaur

# Removing yay
sudo pacman -Rs yay

# Installing AUR programs
pacaur -S \
brave-bin \
discord \
foxitreader \
code

# Adding alias to .bashrc if it does't had yet
grep -qxF 'alias ccc="xclip -se c"' ~/.bashrc || echo 'alias ccc="xclip -se c"' >> ~/.bashrc
grep -qxF 'alias scrot-ccc="scrot /tmp/tmp.png && xclip -se c -target image/png -i /tmp/tmp.png"' ~/.bashrc || echo 'alias scrot-ccc="scrot /tmp/tmp.png && xclip -se c -target image/png -i /tmp/tmp.png"' >> ~/.bashrc
grep -qxF 'alias scrot-ccc-w="scrot -u /tmp/tmp.png && xclip -se c -target image/png -i /tmp/tmp.png"' ~/.bashrc || echo 'alias scrot-ccc-w="scrot -u /tmp/tmp.png && xclip -se c -target image/png -i /tmp/tmp.png"' >> ~/.bashrc
