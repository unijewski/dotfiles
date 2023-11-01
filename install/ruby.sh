brew install gpg2

\curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -

\curl -sSL https://get.rvm.io | bash -s stable --ruby

source ~/.rvm/scripts/rvm

rvm install 3.1.2

rvm use 3.1.2 --default

gem install bundler
