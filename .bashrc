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

        alias safari="open -a Safari"
        alias firefox="open -a FireFox"
        alias chrome="open -a Google\ Chrome"
        alias opera="open -a Opera"
        alias sleip="open -a Sleipnir"

        alias mail="open -a Mail"
        alias message="open -a Messages"
        alias abook="open -a Contacts"
        alias cal="open -a Calendar"
        alias rem="open a- Reminders"
        alias prev="open -a Preview"
        alias tune="open -a iTunes"
        alias sysp="open -a System\ Preferences"

        alias todo="open -a Todo"
        alias due="open -a Due"
        alias wunder="open -a Wunderlist"
        alias coda="open -a Coda\ 2"
        alias cot="open -a CotEditor"
        alias dayone="open -a Day\ One"
        alias sigil="open -a Sigil"
        alias sigil43="open -a Sigil4Epub3"
        alias murasaki="open -a Murasaki"
        alias bty="open -a BathyScaphe"

        alias xcode="open -a Xcode"
        alias stree="open -a SourceTree"
        ;;
esac

export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

export EDITOR="vim"

export PYTHONSTARTUP=~/.pythonstartup
export VIRTUALENV_USE_DISTRIBUTE=true
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi

export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

export PATH=$PATH:/usr/local/share/npm/bin
export PGDATA=/usr/local/var/postgres

export GOROOT=/usr/local/go
export GOPATH=$HOME/_go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export GOENVHOME=$HOME/.goenvs

export PATH=$HOME/.cabal/bin:$PATH
