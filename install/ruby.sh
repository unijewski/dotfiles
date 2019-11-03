brew install gpg2

\curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -

\curl -sSL https://get.rvm.io | bash -s stable --ruby

rvm install 2.6.5

source ~/.profile

rvm use 2.6.5 --default

gem install bundler
