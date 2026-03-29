#!/bin/bash
#
# Set up tmux and tmux plugin manager (tpm).
#

# XDG_CONFIG_HOME may not be set yet
TMUX_CONFIG="$HOME/.config/tmux"

sudo apt-get install -y tmux git
mkdir -p $TMUX_CONFIG/plugins

if ! [ -d $TMUX_CONFIG/plugins/tpm ]; then
	git clone https://github.com/tmux-plugins/tpm $TMUX_CONFIG/plugins/tpm
fi
