# Source all zsh scripts in the scripts/ directory
for s in "$ZSH_CUSTOM"/scripts/*.zsh
do
  source $s
done
