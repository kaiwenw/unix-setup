#!/bin/bash

mv ~/.vimrc ~/.old.vimrc
mv ~/.bashrc ~/.old.bashrc
mv ~/.tmux.conf ~/.old.tmux.conf

cp vimrc ~/.vimrc
cp bashrc ~/.bashrc
cp tmux.conf ~/.tmux.conf
