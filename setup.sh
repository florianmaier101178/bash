#!/bin/bash

# create .bashrc.d
if [ ! -d ~/.bashrc.d ]; then
    mkdir -p ~/.bashrc.d
    cp ./bashrc.d/empty.bashrc ~/.bashrc.d/
fi

# create .bash_completion.d
if [ ! -d ~/bash_completion.d ]; then
    mkdir -p ~/.bash_completion.d
    cp ./bash_completion.d/empty.bash_completion ~/.bash_completion.d/
fi

# backup .bashrc if present
if [ -f ~/.bashrc ]; then
    DATE=`date '+%Y-%m-%d_%H:%M:%S'`
    cp ~/.bashrc ~/.bashrc.$DATE
    rm ~/.bashrc
fi

# link .bashrc
ln -s ~/bash/bashrc ~/.bashrc

# backup .inputrc if present
if [ -f ~/.inputrc ]; then
    DATE=`date '+%Y-%m-%d_%H:%M:%S'`
    cp ~/.inputrc ~/.input.$DATE
    rm ~/.inputrc
fi

# link .inputrc
ln -s ~/bash/inputrc ~/.inputrc




