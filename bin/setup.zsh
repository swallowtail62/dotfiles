#!/bin/zsh

DIR=$(cd $(dirname $0) && pwd)
ROOT_DIR=$DIR/..  # root dir in this repo
cd $ROOT_DIR

for f in .??*; do
  [ $f = ".git" ] && continue
  if [[ -L ${HOME}/.${name} ]]; then
    # unlink ${HOME}/.${name}
  fi
  ln -sfv $PWD/$f $HOME/$f
done
