#!/bin/sh

if [ $SHELL = "/usr/bin/zsh" ]; then
    echo "⚡️ zsh installed, installing oh-my-zsh"
    echo "⚠️ NOTE: oh-my-zsh will appear after been installed. Run 'exit' to continue the script"
    sleep 2
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone https://github.com/spaceship-prompt/spaceship-prompt.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt --depth=1
    ln -s ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt/spaceship.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/spaceship.zsh-theme
    cp ./files/zsh/.zshrc ~/.zshrc
    echo "zsh installed, refresh your session"
else
    echo "⚡️ installing zsh"
    sudo apt install zsh -y
    chsh -s $(which zsh)
    cp ./files/zsh/.zshrc ~/.zshrc
    echo "Please logout and run this script again"

fi
