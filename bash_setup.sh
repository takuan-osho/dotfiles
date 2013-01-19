#!/bin/sh

DOT_FILES=( .vimrc .bashrc .zshrc .gitconfig .gitignore_global .hgrc .hgignore_global)

for file in ${DOT_FILES[@]}
  do
    ln -s $HOME/dotfiles/$file $HOME/$file
    echo "シンボリックリンクを貼りました: $file"
  done
