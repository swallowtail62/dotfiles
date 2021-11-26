#/bin/zsh

export ZPLUG_HOME=$HOME/.zplug

if [ ! -d $ZPLUG_HOME ]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
  # Ref. https://github.com/zplug/zplug#the-best-way
fi

source $ZPLUG_HOME/init.zsh
