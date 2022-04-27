#!/bin/sh

sudo apt install konsole -y
mkdir $HOME/.local/share/konsole
cp -r ./files/konsole/profile/. $HOME/.local/share/konsole
cp ./files/konsole/konsolerc $HOME/.config/konsolerc