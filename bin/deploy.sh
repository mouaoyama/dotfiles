#!/bin/bash

set -e

# Get script path, like $HOME/dotfiles
DOT_DIR="$(dirname "$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)")"

echo "Deploying dotfiles..."

cd "$DOT_DIR"

for file in .??*; do
    [[ "$file" = ".DS_Store" ]] && continue
    [[ "$file" = ".git" ]] && continue
    [[ "$file" = ".gitignore" ]] && continue
    [[ "$file" = ".editorconfig" ]] && continue
    [[ "$file" = ".env" ]] && continue

    ln -fvns "$DOT_DIR/$file" "$HOME/$file"
done
