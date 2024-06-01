#!/bin/bash

set -e

echo "Homebrew installs packages..."

# Check for homebrew
if test $(which brew); then
  brew update
else
  # Install homebrew, see https://brew.sh
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# remove this file after setup dotfiles
#echo "export PATH=/opt/homebrew/bin:$PATH" > ~/.zshrc
#source ~/.zshrc

brew doctor

# Install
# brew bundle dump --global --force
brew bundle --file="$HOME/.Brewfile" -v
