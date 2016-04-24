#!/bin/bash

# Get location of script, allows script to be run from anywhere
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $DOTFILES_DIR

# Symlink dotfiles from repo folder to home directory 
ln -sfv "$DOTFILES_DIR/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/.vimrc" ~

# Symlink pathogen folder, use vimfiles if windows, .vim for everything else 
if [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]]; then
	ln -s "$DOTFILES_DIR/.vim" ~/vimfiles
else
	ln -s "$DOTFILES_DIR/.vim" ~/.vim
fi

