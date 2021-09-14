#!/bin/sh

#
# Check if Homebrew is installed
#
which -s brew
if [[ $? != 0 ]] ; then
    echo "Installing brew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo "Updating brew..."
    brew update
fi

if [ ! -f ~/.vim/autoload/plug.vim ]; then
	echo "Installing vim plug"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

brew tap Homebrew/bundle

brew bundle
