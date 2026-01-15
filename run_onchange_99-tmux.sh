#!/bin/bash
#
# Set up tmux and tmux plugin manager (tpm).
#

TMUX_CONFIG="$XDG_CONFIG_HOME/tmux"

sudo apt-get install -y tmux git
mkdir -p $TMUX_CONFIG/plugins

if ! [ -d $TMUX_CONFIG/plugins/tpm ]; then
	git clone https://github.com/tmux-plugins/tpm $TMUX_CONFIG/plugins/tpm
fi
