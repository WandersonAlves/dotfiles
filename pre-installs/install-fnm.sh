#!/bin/sh

WHICH_FNM=$(which fnm)

if [ "${WHICH_FNM}" = "$HOME/.fnm/fnm" ]; then
    echo "⚡️ Installing node global packages"
    npm config set ignore-scripts false
    npm i -g npm yarn yeelight-manager
else
    echo "⚡️ Installing fnm"
    curl -fsSL https://fnm.vercel.app/install | bash
    source ~/.zshrc

    echo "⚡️ Configuring node"
    fnm install 14
    fnm install 16
    fnm default 16
    echo "Please refresh this terminal session or open another and run this script again"
fi
