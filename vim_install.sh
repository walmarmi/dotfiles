#!/bin/bash

cp ~/dotfiles/vim-config/task.vimrc ~/.vimrc

if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
	echo "Not found. Installing Vundle..."
	rm -rf ~/.vim/bundle/Vundle.vim
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

else 
	echo "Vundle already installed."
fi


echo "Installing Vim Plugins..."
vim +PluginInstall +qall


