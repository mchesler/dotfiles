#!/bin/bash -x

# Install oh-my-zsh
set +x
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
set -x

# Install Homebrew
set +x
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
set -x

brew bundle --file=./Brewfile

# brew install autoconf
# brew install automake
# brew install cmake
# brew install coreutils

# brew install youtube-dl

# brew install tmux

# brew install awscli

# Clean up permissions
compaudit | xargs chmod g-w,o-w

# Install basic Python requirements
pip3 install -r ~/.setup/requirements.txt

# Install VSCode Extensions (Backup via `code --list-extensions > vscode-extensions.txt`)
xargs -n1 code --install-extension < ~/.setup/init/vscode-extensions.txt

# Apply VSCode Settings
cp ~/.setup/init/vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json
