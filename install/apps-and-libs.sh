# Install everything that needs to be first
brew install java
sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

brew install git

# Install the Homebrew packages
libs=(
  openssl
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
  zsh-autosuggestions
)

brew install "${libs[@]}"

# Remove outdated versions from the cellar
brew cleanup

# Install Cask packages
apps=(
  appcleaner
  bartender
  calibre
  clipy
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
  spotify
  spotmenu
  rectangle
  teamviewer
  vlc
  visual-studio-code
  whatsapp
)

brew install "${apps[@]}" --cask
