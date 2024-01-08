#!/usr/bin/env zsh

DOTFILES=$HOME/.dotfiles

if [[ -z $STOW_FOLDERS ]]; then
	STOW_FOLDERS="bin,personal,nvim,tmux,zsh"
fi

#brew install git
brew install stow

# [[ TMUX PLUGIN MANAGER ]]
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# [[ OH MY ZSH ]]
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


pushd $DOTFILES
git clone https://github.com/Santiago-Silvera/nvim ~/.dotfiles/nvim/.config/nvim
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
	# echo "stow $folder"
	stow -D $folder
	stow -v $folder
done
popd
