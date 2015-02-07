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
export GOCF_HOME=/Users/chris/Documents/dev/workspace/cloudfoundry/cli/
export CGH_HOME=~/Documents/dev/bin

PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$RABBITMQ_HOME:$GOCF_HOME/out:$CGH_HOME
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#OSX Shortcuts
alias show-hidden-files='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hide-hidden-files='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'

#Aliases
alias webshare='python -m SimpleHTTPServer'
alias dev='cd ~/Documents/dev/'
alias workspace='cd ~/Documents/dev/workspace'
alias groovyworkspace='cd ~/Documents/dev/workspace/groovy/'
alias cf-release='cd ~/Documents/dev/workspace/cloudfoundry/releases/cf-release'
alias opencredo='cd ~/Documents/dev/workspace/opencredo/'
alias cloudcredo='cd ~/Documents/dev/workspace/cloudcredo/'
alias bosh-1.5='rvm use ruby-1.9.3-p484; rvm gemset use bosh-1.5'
alias reset-vb="sudo /Library/StartupItems/VirtualBox/VirtualBox restart"
alias tmux-dev="cd /Users/chris/Documents/dev/workspace/tmux && tmux new -As dev"
alias vi="/usr/local/Cellar/vim/7.4.488/bin/vim"
alias vim="vi"

##Bosh
alias cud="bosh -n create release --force && bosh -n upload release && bosh -n deploy"

#Shortcuts
alias PS1="PS1='\W $ '"
alias g="grep"
alias h="history"
alias l="clear"
alias source-profile="source ~/.profile"
alias ls='ls -G'
alias nettop="nettop -m tcp"
alias cp_dir="pwd | pbcopy"

goto() {
   . ~/bin/cd_to_project $@ 
}

#Docker (Vagrant)
export DOCKER_HOST=tcp://192.168.59.103:2375
export DOCKER_TLS_VERIFY=1
export DOCKER_CERT_PATH=/Users/chris/.boot2docker/certs/boot2docker-vm

#chruby
source '/usr/local/share/chruby/chruby.sh'
source '/usr/local/share/chruby/auto.sh'

#GO LANG
export GO_PATH=~/workspace/gocode
export GOPATH=~/workspace/gocode
export PATH=/Users/chris/workspace/gocode/bin/:$PATH

#GVM initalisation
#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/chris/.gvm/bin/gvm-init.sh" ]] && source "/Users/chris/.gvm/bin/gvm-init.sh"

#GVM
source "/Users/chris/.gvm/bin/gvm-init.sh"
