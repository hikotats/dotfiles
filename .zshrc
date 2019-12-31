# -------------------------------------
# エイリアス
# -------------------------------------

# tree
alias tree="tree -NC" # N: 文字化け対策, C:色をつける
# grep -n 行数表示, -I バイナリファイル無視, svn関係のファイルを無視
alias grep="grep --color -n -I --exclude='*.svn-*' --exclude='entries' --exclude='*/cache/*'"

alias dco="docker-compose"
alias mongod="mongod --config /usr/local/etc/mongod.conf"

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

function cdup() {
   echo
   cd ..
   zle reset-prompt
}
zle -N cdup
bindkey '\^' cdup

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
