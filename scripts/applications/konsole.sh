#!/bin/sh

sudo apt install konsole -y
mkdir $HOME/.local/share/konsole
cp -r ./files/konsole/profile/. $HOME/.local/share/konsole
cp ./files/konsole/konsolerc $HOME/.config/konsolerc
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal '[]'
python3 ./set-keyboard-shortcut.py 'Konsole' 'konsole' '<Control><Alt>T'
