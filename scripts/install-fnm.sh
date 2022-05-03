#!/bin/sh

WHICH_FNM=$(which fnm)

if [ "${WHICH_FNM}" = "$HOME/.fnm/fnm" ]; then
    echo "⚡️ Configuring node"
    fnm install 14
    fnm install 16
    fnm default 16
    echo "⚡️ Installing node global packages"
    npm i -g npm yarn yeelight-manager
else
    if [ $SHELL = "/usr/bin/zsh" ]; then
        echo "⚡️ Installing fnm"
        curl -fsSL https://fnm.vercel.app/install | bash

        echo "Please refresh this terminal session or open another and run this script again"
    else
        echo "ERROR: You need to have zsh installed to install fnm"
    fi
fi
