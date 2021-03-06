#!/bin/bash

# Install everything that needs to be first
brew cask install java
brew install git

# Install the Homebrew packages
apps=(
  openssl
  elasticsearch
  ffmpeg
  htop
  imagemagick
  terminal-notifier
  postgresql
  python
  mysql
  redis
  tree
  yarn
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup

# Install Cask packages
apps=(
  atom
  docker
  github
  insomnia
  iterm2
  keepassxc
  macmediakeyforwarder
  skype
  slack
  spectacle
  spotify
  spotmenu
  vlc
  visual-studio-code
)

brew cask install "${apps[@]}"
