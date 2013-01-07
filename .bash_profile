alias desk="cd ~/Desktop"
alias blog="cd ~/Dropbox/Projects/BlogEntries"
alias prog="cd ~/Dropbox/Projects/ProgrammingProjects"
alias devpy="cd ~/Dropbox/Projects/ProgrammingProjects/PythonProjects/PythonApplications"
alias ls="ls -F"
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias vi="vim"
alias jenkins="java -jar /usr/local/Cellar/jenkins/1.477/libexec/jenkins.war"

PS1="\u@\h \W\$ "

export PATH=/usr/local/teTeX/bin:$PATH
export MANPATH=/usr/local/teTeX/man:$MANPATH

export PATH=$PATH:/Users/taku/Dropbox/Projects/ProgrammingProjects/RubyProjects/review/bin

export FRAMEWORKPATH=/Library/Frameworks

export GOROOT=$FRAMEWORKPATH/Golang.framework/go
export GOOS=darwin
export GOARCH=amd64
export GOBIN=$FRAMEWORKPATH/Golang.framework/bin
export PATH=$GOBIN:$PATH

export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

export EDITOR="vim"
export PYTHONSTARTUP=~/.pythonstartup

export VIRTUALENV_USE_DISTRIBUTE=true

export EDITOR="/usr/local/bin/mate -w"

[[ -s "/Users/taku/.rvm/scripts/rvm" ]] && source "/Users/taku/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi
