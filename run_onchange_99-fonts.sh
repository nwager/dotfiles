#!/bin/bash

FONTDIR="$HOME/.local/share/fonts"
cd $FONTDIR

# List of (FontName URL) pairs of fonts to install
FONTS=$(cat - <<EOF
JetBrainsMono https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
EOF
)

while read line; do
	# Skip comments
	echo "$line" | grep -q "^#" && continue;
	name=$(echo "$line" | awk '{ print $1 }')
	url=$(echo "$line" | awk '{print $2 }')

	# Skip invalid lines
	[ -z "$name" ] || [ -z "$line" ] && continue

	# Skip fonts that are already installed
	[ -d "$name" ] && continue

	# Install the font
	zipfile="${name}.zip"
	curl -L --output "$zipfile" "$url"
	unzip -d "$name" "$zipfile"
	rm "$zipfile"
done <<< "$FONTS"

# Update font cache
fc-cache -fv
