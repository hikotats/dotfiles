#!/bin/bash

# install homebrew
/usr/bin/ruby -ey "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade
brew install caskroom/cask/brew-cask↲
brew tap homebrew/bundle
brew bundle

# create symlink
for f in .??* ; do
  [[ "$f" == ".git" ]] && continue
  ln -snfv $HOME/dotfiles/"$f" $HOME
done

# install oh-my-zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# clone neobundle
if [ ! -d $HOME/.vim/bundle ]; then
  mkdir -p $HOME/.vim/bundle
  git clone git://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
fi

# create vscode symlink
VSCODE_SETTINGS_PATH=$HOME"/Library/Application Support/Code/User"

if [ -d "$VSCODE_SETTINGS_PATH" ]; then
  for f in "$HOME/dotfiles/vscode/"*".json" ; do
    if [ -f "$VSCODE_SETTINGS_PATH/$f" ]; then
      rm "$VSCODE_SETTINGS_PATH/$f"
      ln -snfv "$HOME/dotfiles/vscode/$f" "$VSCODE_SETTINGS_PATH/$f"
    fi
  done

  VSCODE_SNIPPETS_PATH="$VSCODE_SETTINGS_PATH/snippets"

  [ ! -d "$VSCODE_SNIPPETS_PATH" ] && mkdir -p "$VSCODE_SNIPPETS_PATH"
  for s in `ls "$VSCODE_SNIPPETS_PATH"`; do
    rm "$VSCODE_SNIPPETS_PATH/$s"
    ln -snfv "$HOME/dotfiles/vscode/snippets/$s" "$VSCODE_SNIPPETS_PATH/$s"
  done
fi