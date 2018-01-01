#!/bin/bash

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    ln -snfv ~/dotfiles/"$f" ~/
done

ln -sf ~/dotfiles/ctags ~/ctags
ln -sf ~/dotfiles/tmux-powerline/themes/default.sh ~/tmux-powerline/themes/default.sh
