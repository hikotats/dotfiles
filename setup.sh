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
