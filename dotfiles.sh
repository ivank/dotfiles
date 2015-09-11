#!/bin/sh

# Installing brew if its not already installed
if ! brew 2>/dev/null; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
