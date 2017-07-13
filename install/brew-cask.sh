#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
  iterm2
  java
  spectacle
)

brew cask install "${apps[@]}"
