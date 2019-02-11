#!/usr/bin/env bash

rm $HOME/.vimrc
ln -s $PWD/vimrc $HOME/.vimrc

rm $HOME/.bash_profile
ln -s $PWD/bash_profile $HOME/.bash_profile

rm $HOME/.gitignore_global
ln -s $PWD/gitignore $HOME/.gitignore_global

rm $HOME/.gitconfig
ln -s $PWD/gitconfig $HOME/.gitconfig

rm $HOME/.Xresources
ln -s $PWD/Xresources
