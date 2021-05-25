#!/bin/bash -x

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Swap these once vscodium is built for M1 Macs
# brew install --cask vscodium
brew install --cask visual-studio-code

brew install zsh-completions
brew install zsh-syntax-highlighting

brew install autoconf
brew install automake
brew install cmake
brew install coreutils

brew install mtr
brew install speedtest-cli
brew install tfenv
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
brew install --cask google-cloud-sdk

# Aerial screensaver https://github.com/JohnCoates/Aerial
brew install --cask aerial

# Install VSCode Extensions (Backup via `code --list-extensions > vscode-extensions.txt`)
xargs -n1 code --install-extension < ~/.setup/init/vscode-extensions.txt

# Apply VSCode Settings
cp ~/.setup/init/vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json
