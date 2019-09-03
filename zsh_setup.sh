#!/bin/bash
echo "Installing zsh and powerline"
apt install zsh
apt-get install powerline fonts-powerline

echo "Cloning Oh-my-zsh"
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo "Changing default shell"
chsh -s /bin/zsh
