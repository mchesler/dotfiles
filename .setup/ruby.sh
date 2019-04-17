#!/bin/bash

curl -sSL https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm install 2.3.6 --with-openssl-dir=`brew --prefix openssl`
rvm use 2.3.6
gem install bundler

rvm install 2.5.1 --with-openssl-dir=`brew --prefix openssl`
rvm --default use 2.5.1
gem install bundler

gem install launchy
