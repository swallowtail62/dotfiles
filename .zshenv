# ------------------------------
# General
# ------------------------------
export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8
export TZ=Asia/Tokyo
export GPG_TTY=$(tty)

# ------------------------------
# History
# ------------------------------
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt share_history

# ------------------------------
# LS Color
# ------------------------------
export LSCOLORS=gxfxcxdxbxegedabagacad
