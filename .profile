export HISTFILESIZE=500000
export HISTSIZE=10000
export HISTCONTROL="erasedups:ignoreboth"

export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R '

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

export JAVA_HOME=$(/usr/libexec/java_home)
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export CGH_HOME=~/Documents/dev/bin

PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$GOCF_HOME/out:$CGH_HOME

#OSX Shortcuts
alias show-hidden-files='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hide-hidden-files='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'

#Aliases
alias webshare='python -m SimpleHTTPServer'
alias dev='cd ~/Documents/dev/'
alias workspace='cd ~/Documents/dev/workspace'
alias cloudcredo='cd ~/Documents/dev/workspace/cloudcredo/'
alias reset-vb="sudo /Library/StartupItems/VirtualBox/VirtualBox restart"
alias tmux-dev="cd /Users/chris/Documents/dev/workspace/tmux && tmux new -As dev"
alias vi="/usr/local/Cellar/vim/7.4.488/bin/vim"
alias vim="vi"


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

##Bosh
alias gfd="bosh -n create release --force && bosh -n upload release && bosh -n deploy"

#Docker (Vagrant)
export DOCKER_HOST=tcp://192.168.59.103:2375
export DOCKER_TLS_VERIFY=1
export DOCKER_CERT_PATH=/Users/chris/.boot2docker/certs/boot2docker-vm

#GO LANG
export GO_PATH=~/workspace/gocode
export GOPATH=~/workspace/gocode
export PATH=/Users/chris/workspace/gocode/bin/:$PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
