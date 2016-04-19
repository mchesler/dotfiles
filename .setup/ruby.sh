#!/bin/bash

curl -sSL https://get.rvm.io | bash -s stable

rvm install 2.2.2
rvm use 2.2.2
gem install bundler
rvm install ruby-1.9.3-p551
rvm use 1.9.3-p551
gem install bundler

gem install lunchy
