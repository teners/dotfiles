# Path to your oh-my-zsh installation.
export ZSH=/home/tener/.oh-my-zsh
export VISUAL=vim

ZSH_THEME="tener"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git vi-mode colored-man-pages)

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"

source $ZSH/oh-my-zsh.sh

alias feh='feh -. -d'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias mkdir='mkdir -pv'
alias topdf='lowriter --convert-to pdf'
alias webcam='mplayer tv:// -vf screenshot,mirror -tv device=/dev/video0'
alias mntwin='sudo mount /dev/sda5 /mnt/win'
alias mntusb='sudo mount /dev/sdb1 /mnt/usb'
