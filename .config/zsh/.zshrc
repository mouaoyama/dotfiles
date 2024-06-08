# TODO: split zsh files and add to sheldon (alias, history, completion, plugins, funcitons)
export LSCOLORS=gxfxcxdxbxegedabagacad
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'

alias ls="ls -G"
alias ll="ls -lG"
alias la="ls -laG"

# brew
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/sbin:$PATH

# mise
eval "$(mise activate zsh)"

# sheldon
eval "$(sheldon source)"

# zoxide
eval "$(zoxide init zsh)"

# completion
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  autoload -Uz compinit
  compinit
fi
