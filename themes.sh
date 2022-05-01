#!/bin/sh

sudo apt install konsole -y
mkdir $HOME/.local/share/konsole
cp -r ./files/konsole/profile/. $HOME/.local/share/konsole
cp ./files/konsole/konsolerc $HOME/.config/konsolerc
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal '[]'
python3 ./set-keyboard-shortcut.py 'Konsole' 'konsole' '<Control><Alt>T'

echo "⚡️ 1.1 ULauncher"
sudo apt install pip -y
sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher -y
git clone https://github.com/KiranWells/ulauncher-nord/ \
    ~/.config/ulauncher/user-themes/nord
cp -r ./files/ulauncher/. $HOME/.config/ulauncher
gsettings set org.gnome.desktop.wm.keybindings switch-input-source '[]'
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward '[]'
python3 ./set-keyboard-shortcut.py 'ULauncher' 'ulauncher-toggle' '<Super>space'
