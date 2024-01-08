#!/usr/bin/env zsh

# [[ TMUX PLUGIN MANAGER ]]
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# [[ OH MY ZSH ]]
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

DOTFILES=$HOME/.dotfiles
if [[ -z $STOW_FOLDERS ]]; then
	STOW_FOLDERS="bin,personal,nvim,tmux,zsh"
fi

# [[ BREW ]]
command -v brew >/dev/null 2>&1 || { echo >&2 "Installing Homebrew"; \
git clone https://github.com/Homebrew/brew homebrew }
eval "$(homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"
brew install stow


# [[ STOW ]]
pushd $DOTFILES
git clone https://github.com/Santiago-Silvera/nvim ~/.dotfiles/nvim/.config/nvim
rm ~/.zprofile
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
	# echo "stow $folder"
	stow -D $folder
	stow -v $folder
done
popd
