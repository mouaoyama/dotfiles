#!/bin/bash

set -e

# Get script path, like $HOME/dotfiles
DOT_DIR="$(dirname "$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)")"
APP_DIR="$HOME/Library/Application Support/Code/User"

echo "Setting VSCode..."

# Check Command
if ! test $(which code); then
  echo "Not install code command"
  exit 0
fi

# install extensions
cat "$DOT_DIR/vscode/extensions" | xargs -n 1 code --install-extension

# switch settings.json
# NOTE: disable atomic writes when we detect the settings.json file is a symlink (2023)
#       https://code.visualstudio.com/docs/getstarted/settings#_settings-file-locations
# ln -fvns "$DOT_DIR/vscode/settings.json" "$APP_DIR/settings.json"
if [ -f "$APP_DIR/settings.json" ]; then
  cp -a "$APP_DIR/settings.json" "$APP_DIR/settings.json_bk"
fi
cp -a "$DOT_DIR/.config/vscode/settings.json" "$APP_DIR/settings.json"
