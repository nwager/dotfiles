#!/bin/bash
#
# Set up om-my-zsh and change the shell to zsh. Run before files are installed
# so we can check if .oh-my-zsh directory exists.
#

sudo apt-get install -y zsh curl
if [ -d "$HOME/.oh-my-zsh" ]; then
        echo "oh-my-zsh already exists, skipping omz install."
else
	rm -rf $HOME/.oh-my-zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
		"" --unattended --keep-zshrc
fi
