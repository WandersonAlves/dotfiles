#!/bin/sh
set -e

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
sudo dpkg -i chrome.deb