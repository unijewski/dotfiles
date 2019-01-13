#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
  atom
  github
  iterm2
  java
  keepassxc
  skype
  slack
  spectacle
  spotify
  vlc
  vscode
)

brew cask install "${apps[@]}"
