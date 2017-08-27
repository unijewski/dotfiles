#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
  atom
  iterm2
  java
  spectacle
  github-desktop
  skype
)

brew cask install "${apps[@]}"
