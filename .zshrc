export SHELL='zsh'
export TERM=xterm-256color

# SSHで接続した先で日本語が使えるようにする
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# エディタ
# export EDITOR='vim'
export EDITOR=/usr/local/bin/vi

# ページャ
export PAGER=/usr/local/bin/vimpager
export MANPAGER=/usr/local/bin/vimpager

PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

export XDG_CONFIG_HOME=~/.config

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig

export PATH=$HOME/.cabal/bin:$PATH

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=$HOME/cocos2d-x-3.10/tools/cocos2d-console/bin
export PATH=$PATH:$COCOS_CONSOLE_ROOT

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT=$HOME
export PATH=$PATH:$COCOS_X_ROOT

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=$HOME/cocos2d-x-3.10/templates
export PATH=$PATH:$COCOS_TEMPLATES_ROOT

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT
export PATH=$PATH:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$HOME/Library/Android/sdk/tools
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# 重複する要素を自動的に削除
typeset -U path cdpath fpath manpath

path=(
    $path
    $HOME/bin(N-/)
    /usr/local/bin(N-/)
    /usr/local/sbin(N-/)
)
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

eval "$(rbenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# -------------------------------------
# エイリアス
# -------------------------------------

# commands
# ls
alias ls="ls -G" # color for darwin
alias l="ls -la"
alias la="ls -la"
alias l1="ls -1"
# tree
alias tree="tree -NC" # N: 文字化け対策, C:色をつける
# grep -n 行数表示, -I バイナリファイル無視, svn関係のファイルを無視
alias grep="grep --color -n -I --exclude='*.svn-*' --exclude='entries' --exclude='*/cache/*'"

# Vim
alias vim="open -a MacVim.app"
alias vi=/Applications/MacVim.app/Contents/MacOS/Vim
# vimdiff
alias vimdiff=/Applications/MacVim.app/Contents/MacOS/vimdiff
# view
alias view=/Applications/MacVim.app/Contents/MacOS/view

# java
# alias javac = javac -J-Dfile.encoding=UTF8
# alias java  = javac -Dfile.encoding=UTF8

# ctags
# alias ctags='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
alias ctags='`brew --prefix`/bin/ctags'

alias mongod="mongod --config /usr/local/etc/mongod.conf"
# Applications


# -------------------------------------
# zshのオプション
# -------------------------------------

## 補完機能の強化
autoload -U compinit
# compinit

# 入力しているコマンド名が間違っている場合にもしかして：を出す。
setopt correct

# ビープを鳴らさない
setopt nobeep

# 色を使う
setopt prompt_subst

# ^Dでログアウトしない。
setopt ignoreeof

# バックグラウンドジョブが終了したらすぐに知らせる。
setopt no_tify

# 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups

# タブによるファイルの順番切り替えをしない
unsetopt auto_menu

# cd -[tab]で過去のディレクトリにひとっ飛びできるようにする
setopt auto_pushd

# ディレクトリ名を入力するだけでcdできるようにする
setopt auto_cd

# -------------------------------------
# キーバインド
# -------------------------------------

bindkey -e

function cdup() {
   echo
   cd ..
   zle reset-prompt
}
zle -N cdup
bindkey '^K' cdup

bindkey "^R" history-incremental-search-backward

# -------------------------------------
# その他
# -------------------------------------

# cdしたあとで、自動的に ls する
function chpwd() { ls -a }

# iTerm2のタブ名を変更する
function title {
    echo -ne "\033]0;"$*"\007"
}

## oh-my-zsh
[ -f $HOME/dotfiles/.zshrc.oh-my-zsh ] && source $HOME/dotfiles/.zshrc.oh-my-zsh

## tmuxinator
[ -f $HOME/.tmuxinator/tmuxinator.zsh ] && source $HOME/dotfiles/.tmuxinator/tmuxinator.zsh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
