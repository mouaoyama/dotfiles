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
# compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION
