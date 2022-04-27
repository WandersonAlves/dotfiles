#!/bin/sh

sudo apt install konsole
mkdir $HOME/.local/share/konsole
cp -a ./files/konsole/profile $HOME/.local/share/konsole/
cp ./files/konsole/konsolerc $HOME/.config/konsolerc