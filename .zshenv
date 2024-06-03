# Not load $ZDOTDIR/.zshenv, be careful of startup files loading order
# https://wiki.archlinux.org/title/Zsh#Startup/Shutdown_files
# My Solutions
# - Create link .zshenv from ZDOTDIR
# - Set ZDOTDIR at /etc/zshenv
# - Add this code > source $ZDOTDIR/.zshenv
export ZDOTDIR=$HOME/.config/zsh
source $ZDOTDIR/.zshenv
