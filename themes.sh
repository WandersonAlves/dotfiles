#!/bin/sh

sudo apt install konsole -y
mkdir $HOME/.local/share/konsole
cp -r ./files/konsole/profile/. $HOME/.local/share/konsole
cp ./files/konsole/konsolerc $HOME/.config/konsolerc

echo "⚡️ 1.1 ULauncher"
sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher
git clone https://github.com/KiranWells/ulauncher-nord/ \
    ~/.config/ulauncher/user-themes/nord
cp -r ./files/ulauncher/. $HOME/.config/ulauncher
