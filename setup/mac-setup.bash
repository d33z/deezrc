#!/bin/bash

echo "---Setting up .bash_profile"
if [ -f ~/.bash_profile ]; then
  MOVE_ASIDE_PATH=".bash_profile.$RANDOM.bak"
  echo "Previous .bash_profile found. Snapshotting a copy at: ~/$MOVE_ASIDE_PATH"
  cp ~/.bash_profile ~/$MOVE_ASIDE_PATH
fi
cp $HOME/.deezrc/dotfiles/bash_profile $HOME/.bash_profile

echo "---Setting up .bashrc"
if [ -f ~/.bashrc ]; then
  MOVE_ASIDE_PATH=".bashrc.$RANDOM.bak"
  echo "Previous .bashrc found. Snapshotting a copy at: ~/$MOVE_ASIDE_PATH"
  cp ~/.bashrc ~/$MOVE_ASIDE_PATH
fi
cp $HOME/.deezrc/dotfiles/bashrc $HOME/.bashrc
