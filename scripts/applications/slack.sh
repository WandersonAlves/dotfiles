#!/bin/sh

wget https://downloads.slack-edge.com/releases/linux/4.25.0/prod/x64/slack-desktop-4.25.0-amd64.deb -O slack.deb
sudo dpkg -i slack.deb