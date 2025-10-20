# Install Homebrew and some of the common dependencies needed/desired for software development

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew); then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # Reload .zshrc if using zsh to make brew commands available
  if test $(which zsh); then
    echo "Reloading .zshrc to update PATH with Homebrew..."
    source ~/.zshrc
  fi
fi

brew tap homebrew/services

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulas
brew upgrade
