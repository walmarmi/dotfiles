#!/bin/bash

dotfiles="$HOME/dotfiles/homefiles"
bash_aliases="$dotfiles/.bash_aliases"
local_aliases="$HOME/.bash_aliases"
bashrc="$HOME/.bashrc"

if [ ! -d "$dotfiles" ]; then
	echo "Dotfiles repo does not exist!"
	exit 1
fi

if [ -f "$local_aliases" ]; then
	echo "Backing up existing files..."
	mv "$local_aliases" "$local_aliases.bak"
fi

ln -s "$bash_aliases" "$local_aliases"
echo "Creating symbolic link..."

if [ ! -f "$bashrc" ]; then
	echo "# ~/.bashrc - Creating..." > "$bashrc"
fi

source ~/.bashrc
echo "Done! Please reload environment by restarting terminal..."
