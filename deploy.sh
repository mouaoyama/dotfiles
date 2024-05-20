#!/bin/bash

set -e

# Get script path, like $HOME/dotfiles
DOT_DIR=$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)

echo "Deploying dotfiles..."

for file in "$DOT_DIR"/.??*; do
    [[ "$file" = ".DS_Store" ]] && continue
    [[ "$file" = ".git" ]] && continue
    [[ "$file" = ".editorconfig" ]] && continue

    ln -fvns "$DOT_DIR/$file" "$HOME/$file"
done
