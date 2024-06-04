MAKEFILE_DIR := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
BIN_DIR := $(MAKEFILE_DIR)/bin

.PHONY: all
all: deploy brew defaults

# Create dotfiles symlinks
.PHONY: deploy
deploy:
	bash $(BIN_DIR)/deploy.sh

# Install applications with Brewfile
.PHONY: brew
brew:
	bash $(BIN_DIR)/brew.sh

# Set macOS system preferences
.PHONY: defaults
defaults:
	bash $(BIN_DIR)/defaults.sh

# Create SSH key
.PHONY: ssh
ssh:
	bash $(BIN_DIR)/ssh.sh

# Setting VScode
.PHONY: vscode
vscode:
	bash $(BIN_DIR)/vscode.sh
