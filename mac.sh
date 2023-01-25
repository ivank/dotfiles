#!/bin/sh

#
# Check if Homebrew is installed
#
which -s brew
if [[ $? != 0 ]] ; then
    echo "Installing brew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/ivank/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/ivank/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"    
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

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

