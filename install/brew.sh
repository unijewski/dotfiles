#!/bin/bash

# Install Homebrew and some of the common dependencies needed/desired for software development

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $( which brew )
then
  echo "Installing Homebrew..."
  ruby -e "$( curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install )"
fi

brew tap homebrew/versions
brew tap homebrew/services

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulas
brew upgrade --all

# Install the Homebrew packages
apps=(
  elasticsearch
  ffmpeg
  git
  gpg2
  htop
  imagemagick
  mongodb
  phantomjs
  terminal-notifier
  postgresql
  openssl
  python
  redis
  rvm
  tree
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup
