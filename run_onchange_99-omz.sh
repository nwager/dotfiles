#!/bin/bash
#
# Set up om-my-zsh and change the shell to zsh.
#

sudo apt-get install -y zsh curl
if [ -d "$HOME/.oh-my-zsh" ]; then
        echo ".oh-my-zsh already exists, skipping omz install."
else
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
		"" --unattended --keep-zshrc
fi

