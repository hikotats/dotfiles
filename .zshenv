export LANG=ja_JP.UTF-8

export SHELL='zsh'
export TERM=xterm-256color

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

export EDITOR=/usr/local/bin/vim
export PAGER=/usr/local/bin/vimpager
export MANPAGER=/usr/local/bin/vimpager

export PATH=/usr/local/bin:$PATH

## oh-my-zsh
[ -f $HOME/.zshrc.oh-my-zsh ] && source $HOME/.zshrc.oh-my-zsh

# Golang setting
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"

# anyenv
if [ -d $HOME/.anyenv ]; then
  export PATH="$HOME/.anyenv/bin:$PATH"
  eval "$(anyenv init -)"
  for D in `ls $HOME/.anyenv/envs` ; do
    export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
  done
fi

# mysql
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# 重複する要素を自動的に削除
typeset -U path cdpath fpath manpath

path=(
    $path
    $HOME/bin(N-/)
    /usr/local/bin(N-/)
    /usr/local/sbin(N-/)
)

