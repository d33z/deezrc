#!/bin/bash

echo "---Setting up .bash_profile"
if [ -e ~/.bash_profile ]; then
  MOVE_ASIDE_PATH=".bash_profile.$RANDOM.bak"
  echo "Previous .bash_profile found. Snapshotting a copy at: ~/$MOVE_ASIDE_PATH"
  mv ~/.bash_profile ~/$MOVE_ASIDE_PATH
fi
ln -s $HOME/.deezrc/dotfiles/.bash_profile $HOME/.bash_profile

echo "---Setting up .bashrc"
if [ -e ~/.bashrc ]; then
  MOVE_ASIDE_PATH=".bashrc.$RANDOM.bak"
  echo "Previous .bashrc found. Snapshotting a copy at: ~/$MOVE_ASIDE_PATH"
  mv ~/.bashrc ~/$MOVE_ASIDE_PATH
fi
ln -s $HOME/.deezrc/dotfiles/.bashrc $HOME/.bashrc

echo "---Setting up .inputrc"
if [ -e ~/.inputrc ]; then
  MOVE_ASIDE_PATH=".inputrc.$RANDOM.bak"
  echo "Previous .inputrc found. Snapshotting a copy at: ~/$MOVE_ASIDE_PATH"
  mv ~/.inputrc ~/$MOVE_ASIDE_PATH
fi
ln -s $HOME/.deezrc/dotfiles/.inputrc $HOME/.inputrc

echo "---Setting up Common Directors and Symlinks"

mkdir -p ~/Applications
if [ -e /Applications ]; then
  ln -s /Applications ~/Applications/_Applications
fi
