export HISTFILESIZE=500000
export HISTSIZE=10000
export HISTCONTROL="erasedups:ignoreboth"

export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R '
export RABBITMQ_HOME="/usr/local/Cellar/rabbitmq/2.8.5/sbin"
export ERLANG_HOME="/usr/local/Cellar/erlang/R15B01"

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export JAVA_HOME=$(/usr/libexec/java_home)
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$RABBITMQ_HOME
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#OSX Shortcuts
alias show-hidden-files='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hide-hidden-files='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'

alias single-instance='ssh 172.16.19.127'

#Aliases
alias webshare='python -m SimpleHTTPServer'
alias dev='cd ~/Documents/dev/'
alias workspace='cd ~/Documents/dev/workspace'
alias groovyworkspace='cd ~/Documents/dev/workspace/groovy/'
alias po-workspace='cd ~/Documents/dev/workspace/opencredo/po-rfl'
alias cf-workspace='cd ~/Documents/dev/workspace/cloudfoundry'
alias opencredo='cd ~/Documents/dev/workspace/opencredo/'
alias cloudcredo='cd ~/Documents/dev/workspace/cloudcredo/'
alias bosh-1.5='rvm use ruby-1.9.3-p448; rvm gemset use bosh-1.5'
alias create-upload-release="bosh -n create release --force && bosh -n upload release"
alias reset-vb="sudo /Library/StartupItems/VirtualBox/VirtualBox restart"
alias tmux-dev="tmux new -s dev"

#Shortcuts
alias PS1="PS1='\W $ '"
alias g="grep"
alias h="history"
alias l="clear"
alias source-profile="source ~/.profile"
alias ls='ls -G'
alias nettop="nettop -m tcp"

function rmrf(){
  rm -rf $1;
}

#Riak Alias
alias riak-bucket='curl -i  http://localhost:8098/buckets?buckets=true; echo'
alias riak-keys='curl -i http://localhost:8098/buckets/riak-poc-groovy-bucket/keys?keys=true; echo'
alias riak-keysstream='curl -i http://localhost:8098/buckets/riak-poc-groovy-bucket/keys?keys=stream; echo'
alias riak-clear='riak stop; rm -rf /usr/local/Cellar/riak/1.3.1-x86_64/libexec/data; riak start;'

function riak-fetch(){
  curl -i http://localhost:8098/buckets/$1/keys/$2; echo
}

#RVM and GVM initalisation
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/chris/.gvm/bin/gvm-init.sh" ]] && source "/Users/chris/.gvm/bin/gvm-init.sh"
