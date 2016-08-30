#!/bin/bash

# Get location of script, allows script to be run from anywhere
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# WINDOWS
if [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]]; then
	echo "NOTE: If you receive an insufficient privileges error,\
	try running the bat file from a command prompt as Administrator"
	cmd //c install.bat

# LINUX / OSX
else
	# Symlink dotfiles from repo folder to home directory 
	ln -sfv "$DOTFILES_DIR/.gitconfig" ~
	ln -sfv "$DOTFILES_DIR/.vimrc" ~

	# Symlink vim pathogen folder
	ln -s "$DOTFILES_DIR/.vim" ~/.vim
fi

# Load up git submodules (my vim plugins)
git submodule init
git submodule update

# Build Command-T
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
