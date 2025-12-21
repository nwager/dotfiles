#!/bin/sh
#
# Install packages using the package manager other install methods if
# necessary.
#

# install apt packages
sudo apt-get update
sudo apt-get install -y \
	zsh \
	curl \
	tmux \
	vim \
	openssh-client \
	openssh-server \
	python3 \
	python3-venv \
	1password \
	xclip \

# install snaps
sudo snap install firefox
sudo snap install raindrop
sudo snap install nvim --classic

# install uv
if command -v uv &>/dev/null; then
	curl -LsSf https://astral.sh/uv/install.sh | sh
fi

# set default editor
sudo update-alternatives --install /usr/bin/editor editor /snap/nvim/current/usr/bin/nvim 1000 # priority

# install rust
if [ -d "$HOME/.rustup" ] && [ -d "$HOME/.cargo" ]; then
	echo "rust config folders already exist, skipping."
else
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- \
		-y --no-modify-path
fi

