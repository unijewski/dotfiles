# Install everything that needs to be first
brew install java
sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

brew install git

# Install the Homebrew packages
libs=(
  openssl
  ffmpeg
  htop
  imagemagick
  mysql
  postgresql
  python
  redis
  terminal-notifier
  tree
  yarn
  zsh-autosuggestions
)

brew install "${libs[@]}"

# Remove outdated versions from the cellar
brew cleanup

# Install Cask packages
apps=(
  adium
  appcleaner
  calibre
  clipy
  coconutbattery
  discord
  docker
  firefox
  github
  google-chrome
  hiddenbar
  insomnia
  iterm2
  keepassxc
  macmediakeyforwarder
  messenger
  muzzle
  notion
  rectangle
  scroll-reverser
  skype
  slack
  spotify
  teamviewer
  visual-studio-code
  vlc
  whatsapp
)

brew install "${apps[@]}" --cask --force
