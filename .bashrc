PS1="\u@\h \W\$ "

case $TERM in
    linux)
        LANG=C
        ;;
    *)
        LANG=ja_JP.UTF-8
        LANGUAGE=ja_JP.UTF-8
        ;;
esac

# OS毎に ls の場合分け
case "$OSTYPE" in
    darwin*)
        alias l="ls -FG"
        alias ls="ls -FG"
        ;;
    linux*)
        alias l="ls -F --color=auto"
        alias ls="ls -F --color=auto"
        ;;
    cygwin*)
        alias l="ls -F --color=auto"
        alias ls="ls -F --color=auto"
        ;;
esac

alias la="ls -aF"
alias ll="ls -alF"

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

export PATH=$PATH:/usr/local/share/npm/bin
