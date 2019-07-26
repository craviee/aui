#!/bin/bash

# Official programs
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

# Installing AUR helper
mkdir ~/tmp/
cd ~/tmp/
gpg --recv-keys --keyserver hkp://pgp.mit.edu 1EB2638FF56C0C53
curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=cower
makepkg -i PKGBUILD --noconfirm
curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=pacaur
makepkg -i PKGBUILD --noconfirm
cd ~
rm -r ~/tmp/

# AUR programs
pacaur -S \
brave \
discord \
foxitreader \
code
