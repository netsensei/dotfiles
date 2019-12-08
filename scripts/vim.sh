#!/usr/bin/bash

echo "Installing vim-plug."

# Install vim-plug

if [[ ! -e $HOME/.local/share/nvim/site/autoload/plug.vim  ]];then
  curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi