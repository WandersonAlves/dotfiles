#!/bin/sh
set -e

sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher wmctrl -y
git clone https://github.com/KiranWells/ulauncher-nord/ \
    ~/.config/ulauncher/user-themes/nord
cp -r ./files/ulauncher/. $HOME/.config/ulauncher
gsettings set org.gnome.desktop.wm.keybindings switch-input-source '[]'
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward '[]'
python3 ./set-keyboard-shortcut.py 'ULauncher' 'ulauncher-toggle' '<Super>space'
pip3 install fuzzywuzzy --user