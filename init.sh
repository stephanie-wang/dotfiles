#!/bin/bash

_done() {
    echo "...done :)"
}

echo "Installing Python dependencies"
pip install flake8
_done

echo "Initializing git submodules"
git submodule init
git submodule update
_done

echo "Copying dotfiles"
cp -R vim ~/.vim
cp vim/vimrc ~/.vimrc
_done
