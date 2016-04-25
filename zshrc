# basic
[ -f $HOME/dotfiles/zshrc.basic ] && source $HOME/dotfiles/zshrc.basic

## aliases
[ -f $HOME/dotfiles/zshrc.alias ] && source $HOME/dotfiles/zshrc.alias

## color
[ -f $HOME/dotfiles/zshrc.color ] && source $HOME/dotfiles/zshrc.color

## oh-my-zsh
[ -f $HOME/dotfiles/zshrc.oh-my-zsh ] && source $HOME/dotfiles/zshrc.oh-my-zsh

## tmuxinator
[ -f $HOME/.tmuxinator/tmuxinator.zsh ] && source $HOME/.tmuxinator/tmuxinator.zsh

# extra
[ -f $HOME/dotfiles/zshrc.extra ] && source $HOME/dotfiles/zshrc.extra

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig

# added by Anaconda2 4.0.0 installer
export PATH=$HOME/anaconda/bin:$PATH

export PATH=$HOME/.cabal/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH

if [ -d "${PYENV_ROOT}" ]; then
  export PATH=${PYENV_ROOT}/bin:$PATH
  eval "$(pyenv init -)"
fi

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/sekitatsuhiko/cocos2d-x-3.10/tools/cocos2d-console/bin
export PATH=$PATH:$COCOS_CONSOLE_ROOT

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT=/Users/sekitatsuhiko
export PATH=$PATH:$COCOS_X_ROOT

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/sekitatsuhiko/cocos2d-x-3.10/templates
export PATH=$PATH:$COCOS_TEMPLATES_ROOT

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=/Users/sekitatsuhiko/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT
export PATH=$PATH:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$HOME/Library/Android/sdk/tools
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools

# 重複する要素を自動的に削除
typeset -U path cdpath fpath manpath
#
path=(
    $path
    $HOME/bin(N-/)
    /usr/local/bin(N-/)
    /usr/local/sbin(N-/)
)
