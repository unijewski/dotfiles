#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first, if git is installed
if test $( which git )
then
  [ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master
fi

# Package managers
. "$DOTFILES_DIR/install/brew.sh"

# Apps and packages
. "$DOTFILES_DIR/install/apps-and-libs.sh"

# Others
. "$DOTFILES_DIR/install/iterm.sh"
. "$DOTFILES_DIR/install/zsh.sh"
. "$DOTFILES_DIR/install/ruby.sh"
. "$DOTFILES_DIR/install/vim.sh"
. "$DOTFILES_DIR/install/vscode.sh"
. "$DOTFILES_DIR/install/git.sh"

echo "Done!"
