
alias ls='ls -F -G'
alias be='bundle exec'
alias emacs='/usr/local/bin/emacs -nw'
alias be="bundle exec"
alias subl='subl -n'

export HISTCONTROL=ignoreboth
export CLICOLOR=1
export LSCOLORS=gxfxcxdxCxegedabagacad
export AC_MACRODIR=/Xcode3.2/usr/share/autoconf
export ANDROID_HOME=$HOME/Development/adt-bundle-mac/sdk

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ];then
  source /usr/local/etc/bash_completion.d/git-completion.bash
fi

export PATH

PATH=/usr/local/bin:$HOME/bin:$PATH
PATH=$PATH:/opt/local
PATH=$PATH:/usr/local/google_appengine
PATH=$PATH:/usr/local/rbenv/bin
PATH=$PATH:$HOME/.rbenv/shims
PATH=$PATH:$HOME/usr/local/share/npm/bin
PATH=$PATH:$HOME/Development/adt-bundle-mac/sdk/tools
PATH=$PATH:$HOME/Development/adt-bundle-mac/sdk/platform-tools
PATH=$PATH:/Library/Frameworks/Python.framework/Versions/2.7/bin


eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### git-aware-prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "

### rbenv auto rehash
function gem(){
  $HOME/.rbenv/shims/gem $*
  if [ "$1" = "install" ] || [ "$1" = "i" ] || [ "$1" = "uninstall" ] || [ "$1" = "uni" ]
  then
    rbenv rehash
  fi
}

function bundle(){
  $HOME/.rbenv/shims/bundle $*
  if [ "$1" = "install" ] || [ "$1" = "update" ]
  then
    rbenv rehash
  fi
}

### openssl
export PATH="/usr/local/ssl/bin:$PATH"


if [ -f ~/.bashrc ];then
 . ~/.bashrc
fi


