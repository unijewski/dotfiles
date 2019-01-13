#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew tap caskroom/versions

# Install packages
apps=(
  atom
  github
  iterm2
  java8
  keepassxc
  skype
  slack
  spectacle
  spotify
  vlc
  visual-studio-code
)

brew cask install "${apps[@]}"
