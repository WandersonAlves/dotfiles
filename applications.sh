#!/bin/sh
# echo "⚡️ 1.1 ULauncher"
# sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher
# git clone https://github.com/KiranWells/ulauncher-nord/ \
#   ~/.config/ulauncher/user-themes/nord
# cp -r ./files/ulauncher/. $HOME/.config/ulauncher
echo "⚡️ 1.2 vscode"
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt update
sudo apt install code
# echo "⚡️ 1.3 Spotify"
# curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
# echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
# sudo apt update
# sudo apt install spotify-client
echo "⚡️ 1.4 Google Chrome Stable"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
sudo dpkg -i chrome.deb
echo "⚡️ 1.6 Calibe (ebook managment)"
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
echo "⚡️ 1.7 Slack"
wget https://downloads.slack-edge.com/releases/linux/4.25.0/prod/x64/slack-desktop-4.25.0-amd64.deb -O slack.deb
sudo dpkg -i slack.deb
echo "⚡️ 1.8 Postman"
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
tar -xf postman.tar.gz -C $HOME/dev
echo "⚡️ 1.9 Telegram"
sudo apt install telegram-desktop
echo "⚡️ 1.11 Docker Engine"
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
echo "⚡️ 1.12 docker-compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
