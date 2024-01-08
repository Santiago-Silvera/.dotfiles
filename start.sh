#!/usr/bin/env zsh

DOTFILES=$HOME/.config
# Check to see if Homebrew is installed, and install it if it is not
command -v brew >/dev/null 2>&1 || { echo >&2 "Installing Homebrew Now"; \
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; }

brew install git
brew install stow

if [[ -z $STOW_FOLDERS ]]; then
    STOW_FOLDERS="bin,nvim,tmux,zsh"
fi
echo $STOW_FOLDERS

pushd $DOTFILES

for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    echo "stow $folder"
    stow -D $folder
    stow $folder
done
popd
