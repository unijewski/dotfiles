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
  appcleaner
  bartender
  calibre
  coconutbattery
  docker
  firefox
  github
  google-chrome
  insomnia
  iterm2
  keepassxc
  macmediakeyforwarder
  messenger
  muzzle
  notion
  scroll-reverser
  skype
  slack
  spectacle
  spotify
  spotmenu
  teamviewer
  vlc
  visual-studio-code
  whatsapp
)

brew install --cask "${apps[@]}"
