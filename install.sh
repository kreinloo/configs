#!/bin/bash

INSTALL_PATH="$HOME"

function install_config()
{
  if [ ! -e "$1" ]; then
    echo "$1 not found, skipping..."
    return
  fi

  CONFIG_NAME="$(basename "$1")"
  echo "Installing $CONFIG_NAME..."

  if [ -z "$2" ]; then
    CONFIG_PATH="$INSTALL_PATH/.$CONFIG_NAME"
  else
    CONFIG_PATH="$INSTALL_PATH/$2/$CONFIG_NAME"
  fi

  if [ -e "$CONFIG_PATH" ] || [ -L "$CONFIG_PATH" ] ; then
    #mv $CONFIG_PATH "$CONFIG_PATH.orig"
    echo "...removing $CONFIG_PATH"
    rm "$CONFIG_PATH"
  fi

  ln -s "$PWD/$1" "$CONFIG_PATH"
  echo "...$CONFIG_PATH OK"
}

# files
install_config "bin"
install_config "gemrc"
install_config "gitconfig"
install_config "vim"
install_config "vimrc"
install_config "zshrc"
install_config "tmux.conf"
install_config "hgrc"

if [ "$(uname)" == "Linux" ]; then
  install_config "xinitrc"
  install_config "Xresources"
  #install_config "fonts.conf"
  install_config "subl/Preferences.sublime-settings" \
    ".config/sublime-text-3/Packages/User"
  install_config "subl/Package Control.sublime-settings" \
    ".config/sublime-text-3/Packages/User"
elif [ "$(uname)" == "Darwin" ]; then
  install_config "subl/Preferences.sublime-settings" \
    "Library/Application Support/Sublime Text 3/Packages/User"
  install_config "subl/Package Control.sublime-settings" \
    "Library/Application Support/Sublime Text 3/Packages/User"
fi
