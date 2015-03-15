# basic
[ -f $HOME/dotfiles/zshrc.basic ] && source $HOME/dotfiles/zshrc.basic

## aliases
[ -f $HOME/dotfiles/zshrc.alias ] && source $HOME/dotfiles/zshrc.alias

## color
[ -f $HOME/dotfiles/zshrc.color ] && source $HOME/dotfiles/zshrc.color

## oh-my-zsh
[ -f $HOME/dotfiles/zshrc.oh-my-zsh ] && source $HOME/dotfiles/zshrc.oh-my-zsh

## tmuxinator
[[ -s $HOME/.tmuxinator/tmuxinator.zsh ]] && source $HOME/dotfiles/tmuxinator.zsh
