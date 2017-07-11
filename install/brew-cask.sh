#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
  java
  spectacle
  iterm2
)

brew cask install "${apps[@]}"
