PS1="\u@\h \W\$ "

export LANG=ja_JP.UTF-8

alias ls="ls -F"
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
case ${OSTYPE} in
    darwin*)
        # Mac
        alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
        alias vi="vim"
        ;;
esac

export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

export EDITOR="vim"

export PYTHONSTARTUP=~/.pythonstartup
export VIRTUALENV_USE_DISTRIBUTE=true

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi

export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
