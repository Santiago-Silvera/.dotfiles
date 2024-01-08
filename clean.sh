#!/usr/bin/env zsh
# pushd $DOTFILES
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    stow -v -D $folder
done
# popd
