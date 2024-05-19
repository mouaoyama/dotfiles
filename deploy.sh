#!/bin/bash

set -e

DOT_DIR=$HOME/dotfiles

echo "Deploying dotfiles..."

for file in .??*; do
    [[ "$file" = ".DS_Store" ]] && continue
    [[ "$file" = ".git" ]] && continue
    [[ "$file" = ".editorconfig" ]] && continue

    ln -fvns "$DOT_DIR/$file" "$HOME/$file"
done
