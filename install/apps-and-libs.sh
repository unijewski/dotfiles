#!/bin/bash

# Install everything that needs to be first
brew cask install java8
brew install git

# Install the Homebrew packages
apps=(
  openssl
  elasticsearch
  ffmpeg
  htop
  imagemagick
  mongodb
  terminal-notifier
  postgresql
  python
  redis
  tree
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup

# Install Cask packages
apps=(
  atom
  github
  iterm2
  keepassxc
  skype
  slack
  spectacle
  spotify
  vlc
  visual-studio-code
)

brew cask install "${apps[@]}"
