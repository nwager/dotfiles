#!/bin/sh
#
# All necessary prerequisites before chezmoi gets going.
#

sudo apt-get install -y \
	git \
	curl \

git config --global user.email "noahwager@gmail.com"
git config --global user.name "Noah Wager"
