# XDG Base Directory
# https://wiki.archlinux.org/title/XDG_Base_Directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
#export XDG_DATA_DIRS=/usr/local/share:/usr/share
#export XDG_CONFIG_DIRS=/etc/xdg

# zsh xdg
# By default, these files is created in $ZDOTDIR (.zsh_history, .zcompdump, .zsh_sessions)
# And I want not override this files (/etc/zprofile /etc/zshrc, /etc/zshrc_Apple_Terminal)
# If you would modify this problem, override like this > export HISTFILE=${HISTFILE:-$XDG_STATE_HOME/zsh/history}
# ----- .config/zsh/.zshrc -----
# [ -d "$XDG_STATE_HOME"/zsh ] || mkdir -p "$XDG_STATE_HOME"/zsh
# HISTFILE="$XDG_STATE_HOME"/zsh/history
# # Completion files: Use XDG dirs
# [ -d "$XDG_CACHE_HOME"/zsh ] || mkdir -p "$XDG_CACHE_HOME"/zsh
# zstyle ':completion:*' cache-path "$XDG_CACHE_HOME"/zsh/zcompcache
# autoload -Uz compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION
# compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSIONz

# mise
export MISE_NODE_COREPACK=1

# go
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"

# python
export PYTHON_HISTORY="$XDG_STATE_HOME/python/history"
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"
export PYTHONUSERBASE="$XDG_DATA_HOME/python"

# rust
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export PATH="$CARGO_HOME/bin:$PATH"

# NOTE: use diesel in my rust demo
# mysql
export PATH="/opt/homebrew/opt/mysql@8.4/bin:$PATH"
