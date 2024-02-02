#!/bin/bash
sudo xbps-install -Suy &&
sudo xbps-install -Sy xorg base-devel git curl wget libXft-devel libX11-devel harfbuzz-devel libXext-devel libXrender-devel libXinerama-devel bspwm sxhkd dunst flameshot htop neovim polybar python jq font-weather-icons font-awesome5 noto-fonts-cjk noto-fonts-emoji picom numlockx hsetroot firefox chrony lxappearance rofi gtk-engine-murrine gtk2-engines font-iosevka void-repo-multilib void-repo-multilib-nonfree void-repo-nonfree xtools kitty helix pulseaudio ffmpeg betterlockscreen i3lock-color ImageMagick xdpyinfo xrandr xrdb xset llvm
sudo ln -s /etc/sv/chronyd /var/service/ 
cp .xinitrc ~ 
cp .Xresources ~ 
cp -r .config/ ~ 
cp -r .icons/ ~ 
cp -r .fonts/ ~ 
mkdir ~/.zinit 
git clone https://github.com/zdharma/zinit.git ~/.zinit/bin 
sudo ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/ 
sudo xbps-reconfigure -f fontconfig 
sudo fc-cache -f -v 
chmod +x ~/.config/polybar/scripts/* 
