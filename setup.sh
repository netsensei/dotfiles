#!/usr/bin/bash

# exit if a command fails
set -e

# Git clone this project

REPO=${REPO:-git://github.com/netsensei/dotfiles.git}
BASEDIR=${CLONE_DIR:-"${HOME}"/.dotfiles}

if [[ ! -d $BASEDIR ]];then
  mkdir -p $BASEDIR
  git clone --recursive $REPO $BASEDIR
  chown -R $USER.$USER $BASEDIR
fi

# Go symlinkin'

FILES=$(git ls-files -- . ':!:*.md' ':!:*.sh' ':!:nvim')

function link () {  
  
  # rename files, if exists and not a symlink

  if [[ -e $HOME/$1 ]] && [[ ! -h $HOME/$1 ]];then
    echo "Backing up ${HOME}/$1."

    mv $HOME/$1 $HOME/"$1.bak"
  fi

  # Create a symlink
  
  OVERWRITTEN=""

  if [[ -e $HOME/$1 ]] && [[ -h $HOME/$1 ]];then
    OVERWRITTEN="(Overwritten)"    
    rm -r $HOME/$1
  fi

  echo "Creating $BASEDIR/$1 ~> ~/$1 $OVERWRITTEN."

  ln -s $BASEDIR/$1 $HOME/$1

}

for file in $FILES; do
  link $file
done;

echo "Done!"