#/bin/zsh

export ZPLUG_HOME=$HOME/.zplug

if [ ! -d $ZPLUG_HOME ]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
  # Ref. https://github.com/zplug/zplug#the-best-way
fi

source $ZPLUG_HOME/init.zsh


## Plugins

### Auto Suggestions
zplug "zsh-users/zsh-autosuggestions"  # https://github.com/zsh-users/zsh-autosuggestions

### Completions
zplug "zsh-users/zsh-completions"  # https://github.com/zsh-users/zsh-completions

### Terminal Colors
zplug "chrissicool/zsh-256color"  # https://github.com/chrissicool/zsh-256color

### Powerlevel10
zplug "romkatv/powerlevel10k", as:theme, depth:1  # https://github.com/romkatv/powerlevel10k#zplug

### Manage zplug itself as package
zplug 'zplug/zplug', hook-build:'zplug --self-manage'  # https://github.com/zplug/zplug#let-zplug-manage-zplug

## Install plugins that have'nt been installed
if ! zplug check --verbose; then
  printf "There are zsh plugins that have'nt been installed. Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

## Load all installed plugins
zplug load
