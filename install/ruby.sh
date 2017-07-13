brew install gpg2

curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
curl -sSL https://get.rvm.io | bash -s stable

rvm install 2.4.1
rvm use 2.4.1 --default

gem install bundler
