#!/bin/sh

if ($SHELL = "/usr/bin/zsh"); then
    echo "⚡️ zsh installed, installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    cp ../.zshrc ~/.zshrc
else
    echo "⚡️ installing zsh"
    sudo apt install zsh -y
    chsh -s $(which zsh)
    echo "Please logout and run this script again"

fi
