#!/bin/sh

echo "⚡️ Installing fnm"
curl -fsSL https://fnm.vercel.app/install | bash
source ~/.zshrc

echo "⚡️ Configuring node"
fnm install 14
fnm install 16
fnm default 16

echo "⚡️ Installing node global packages"
npm config set ignore-scripts false
npm i -g spaceship-prompt
npm i -g npm
npm i -g yarn
npm i -g yeelight-manager