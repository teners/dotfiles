#!/bin/bash 
# for cron daily
WHEREAMI=$(pwd)
if [ -d "/home/tener/git/dotfiles" ]; then
    cd /home/tener/git/dotfiles
else
    zenity --error --text="An error occured: \"~/git/dotfiles\" directory doesn\'t exists."
    exit
fi

# vim
cp -ru /home/tener/.vimrc .

# X
cp -ru /home/tener/.xinitrc .
cp -ru /home/tener/.Xresources .

# i3
if [ ! -d ".i3" ]; then
    mkdir .i3
fi
if [ ! -d ".i3/scripts" ]; then
    mkdir .i3/scripts
fi
cp -ru /home/tener/.i3/config .i3/
cp -ru /home/tener/.i3status.conf .i3/
cp -ru /home/tener/.i3/scripts/i3status.sh .i3/scripts/
cp -ru /home/tener/.i3/scripts/lock .i3/scripts/

# zsh
if [ ! -d ".oh-my-zsh/custom/themes" ]; then
    mkdir -p .oh-my-zsh/custom/themes
fi
cp -ru /home/tener/.oh-my-zsh/custom/themes/tener.zsh-theme .oh-my-zsh/custom/themes/
cp -ru /home/tener/.zshrc .

cd $WHEREAMI
