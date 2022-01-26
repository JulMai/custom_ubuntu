#!/bin/bash

# Credits to ChrisTitusTech: https://github.com/ChrisTitusTech/Linux-MacOS-GNOME
# https://gist.github.com/ChrisTitusTech/73722b4325b1e0b6add76afc8e608f33
sudo apt install git gnome-shell-extensions chrome-gnome-shell gnome-tweaks -y
git clone https://github.com/ChrisTitusTech/Linux-MacOS-GNOME.git ~/MacOS
mkdir ~/.themes
mkdir ~/.icons
mv ~/MacOS/themes/* ~/.themes
mv ~/MacOS/icons/* ~/.icons
rm -rf ~/MacOS

gsettings set org.gnome.mutter center-new-windows 'true'
gsettings set org.gnome.desktop.interface gtk-theme "WhiteSur-dark"
gsettings set org.gnome.desktop.wm.preferences theme "WhiteSur-dark"
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'

# Terminal Settings
gsettings set org.gnome.Terminal.Legacy.Settings new-tab-position 'next'
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ new-tab '<Ctrl>y'
gsettings set org.gnome.desktop.interface monospace-font-name 'Ubuntu Mono 15'

sudo apt install curl vim -y
