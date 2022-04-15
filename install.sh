#!/bin/sh

echo "1. Installing common applications"
echo "1.1 fnm"
curl -fsSL https://fnm.vercel.app/install | bash
echo "1.2 vscode"
snap install --classic code
echo "1.3 Spotify"
snap install spotify
echo "1.4 Google Chrome Stable"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
sudo dpkg -i chrome.deb
echo "1.5 Terminator (terminal emulator)"
sudo apt install terminator
echo "1.6 Calibe (ebook managment)"
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
echo "1.7 Slack"
snap install slack
echo "1.8 Postman"
snap install postman
echo "1.9 Telegram"
snap install telegram-desktop
echo "1.10 neofetch"
sudo apt install neofetch
echo "x. Post install"
echo "x.1 Configuring fnm"
fnm install 14
fnm install 16
fnm default 16

echo "x.2 Installing node global packages"
npm config set ignore-scripts false
npm i -g spaceship-prompt
npm i -g npm
npm i -g yarn
npm i -g yeelight-manager