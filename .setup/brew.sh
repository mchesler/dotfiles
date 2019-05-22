#!/bin/bash -x

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install bash-completion
brew install git
brew install git-flow

brew install ansible
brew install autoconf
brew install automake
brew install cmake
brew install coreutils

brew install mtr
brew install speedtest-cli
brew install terraform
brew install telnet
brew install watch
brew install youtube-dl

brew install csshx
brew install curl
brew install wget

brew install libevent
brew install libyaml

brew install openssl
brew install pcre
brew install pkg-config
brew install ssh-copy-id
brew install the_silver_searcher
brew install tmux
brew install xz
brew install youtube-dl

brew cask install adoptopenjdk
brew install awscli
brew install ec2-api-tools
brew install s3cmd
brew install aws-sam-cli

brew install nvm
mkdir ~/.nvm
cp $(brew --prefix nvm)/nvm-exec ~/.nvm/

brew install python3

# Aerial screensaver https://github.com/JohnCoates/Aerial
brew cask install aerial

# brew install cgal
# brew install enscript
# brew install freetype
# brew install freexl
# brew install gdal
# brew install gdbm
# brew install geoip
# brew install geos
# brew install gettext
# brew install giflib
# brew install glide
# brew install gmp
# brew install go
# brew install heroku
# brew install heroku-node
# brew install icu4c
# brew install imagemagick
# brew install influxdb
# brew install jpeg
# brew install jq
# brew install json-c
# brew install libevent
# brew install libgeotiff
# brew install libgpg-error
# brew install libidn2
# brew install libksba
# brew install libpng
# brew install libpq
# brew install libspatialite
# brew install libtiff
# brew install libtool
# brew install libunistring
# brew install libxml2
# brew install libxslt
# brew install libyaml
# brew install mercurial
# brew install mpfr
# brew install msgpack-tools
# brew install mysql
# brew install node
# brew install nsq
# brew install numpy
# brew install oniguruma
# brew install openssl@1.1
# brew install pipenv
# brew install postgis
# brew install postgresql
# brew install proj
# brew install pulumi
# brew install python
# brew install python@2
# brew install readline
# brew install redis
# brew install ripgrep
# brew install s3cmd
# brew install sfcgal
# brew install sqlite
# brew install terraforming
# brew install yarn
