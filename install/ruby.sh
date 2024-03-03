brew install gpg2

\curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -

\curl -sSL https://get.rvm.io | bash

source ~/.rvm/scripts/rvm

rvm install 3.1.3 --with-openssl-dir=$(brew --prefix openssl)

rvm use 3.1.3 --default

gem install bundler
