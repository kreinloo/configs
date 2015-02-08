#!/bin/bash

INSTALL_PATH="$HOME"

function install_config()
{
  if [ ! -e $1 ]; then
    echo "$1 not found, skipping..."
    return
  fi
  echo "Installing $1..."
  CONFIG_PATH="$INSTALL_PATH/.$1"
  if [ -e $CONFIG_PATH ]; then
    #mv $CONFIG_PATH "$CONFIG_PATH.orig"
    rm $CONFIG_PATH
  fi
  ln -s "$PWD/$1" $CONFIG_PATH
}

# files
install_config "bin"
install_config "gemrc"
install_config "gitconfig"
install_config "vim"
install_config "vimrc"
install_config "zshrc"

if [[ "$(uname)" == "Linux" ]]; then
  install_config "xinitrc"
  install_config "Xresources"
  install_config "tmux.conf"
  #install_config "fonts.conf"
fi
