brew install gpg2

curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://get.rvm.io | bash -s stable

source ~/.profile

rvm install 2.5.3
rvm use 2.5.3 --default

gem install bundler
