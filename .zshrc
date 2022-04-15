# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"


# Literally alias
alias contents="find . -type f -not -path './node_modules/*' -not -path './.git/*'  | sed -e 's/.*\.//' | sort | uniq -c | sort -n" # Show quantity of files
alias cat="batcat -pp" # Overrides cat command
alias change-wallpaper="python /mnt/ssd-300/Wallpapers/wallpaper_changer.py"
alias bulb-low="yee set 'Kitchen,Living Room' ct 2500 50" # Change bulbs to low light
alias bulb-normal="yee set 'Kitchen,Living Room' ct 4500 100" # Change bulbs to normal light
# fnm
export PATH=$HOME/.fnm:$PATH
# Golang
export PATH=$PATH:/usr/local/go/bin
# Fast Node Manager
eval "`fnm env --multi`"
# Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# Set Spaceship ZSH as a prompt
plugins=(git zsh-interactive-cd zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
fpath=($fpath "$HOME/.zfunctions")
autoload -U promptinit; promptinit
prompt spaceship

eval $(thefuck --alias)


