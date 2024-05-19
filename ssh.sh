#!/bin/bash

set -e

# https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
echo "Generating a new SSH key for GitHub..."

# Check SSH key
mkdir -p ~/.ssh
if [ -f ~/.ssh/id_ed25519 ]; then
  echo "Exist key"
fi

# Input key
echo "Input your GitHub email address"
read INPUT_EMAIL

# Generating a new SSH key
ssh-keygen -t ed25519 -C $INPUT_EMAIL -f ~/.ssh/id_ed25519

# Adding your SSH key to the ssh-agent
#eval "$(ssh-agent -s)"

#touch ~/.ssh/config
#echo "Host *\n AddKeysToAgent yes\n UseKeychain yes\n IdentityFile ~/.ssh/id_ed25519" | tee ~/.ssh/config

#ssh-add -K ~/.ssh/id_ed25519

# Adding your SSH key to your GitHub account
echo "run 'pbcopy < ~/.ssh/id_ed25519.pub' and paste that into GitHub"
