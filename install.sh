#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

mkdir -p "$HOME/.vim"

# Package managers & packages
. "$DOTFILES_DIR/install/brew.sh"

if [ "$(uname)" == "Darwin" ]; then
  . "$DOTFILES_DIR/install/brew-cask.sh"
fi

# Bunch of symlinks
ln -sfv "$DOTFILES_DIR/git/gitconfig" "$HOME/.gitconfig"
ln -sfv "$DOTFILES_DIR/git/gitignore_global" "$HOME/.gitignore_global"
ln -sfv "$DOTFILES_DIR/zsh/zshrc" "$HOME/.zshrc"
ln -sfv "$DOTFILES_DIR/vim/vimrc" "$HOME/.vimrc"
ln -sfv "$DOTFILES_DIR/vim/colors" "$HOME/.vim/colors"

# rvm
command curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
command curl -sSL https://get.rvm.io | bash -s stable

echo "Done!"
