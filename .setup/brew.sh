#!/bin/bash -x

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Swap these once vscodium is built for M1 Macs
# brew install --cask vscodium
brew install --cask visual-studio-code

brew install zsh-completions

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

brew install ssh-copy-id
brew install the_silver_searcher
brew install tmux

brew install awscli

# Aerial screensaver https://github.com/JohnCoates/Aerial
brew install --cask aerial
