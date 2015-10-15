# Path {{{
export LESS=' -R '

export JAVA_HOME=$(/usr/libexec/java_home)
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export CGH_HOME=~/bin
export GOPATH=/Users/cloudcredo/workspace/gocode

PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$CGH_HOME:/$GOPATH/bin:
# }}}

# History {{{
export HISTFILESIZE=500000
export HISTSIZE=10000
export HISTCONTROL="erasedups:ignoreboth"
# }}}

# OSX Shortcuts {{{
alias show-hidden-files='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hide-hidden-files='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'
# }}}

# Aliases {{{
alias webshare='python -m SimpleHTTPServer'
alias dev='cd ~/Documents/dev/'
alias workspace='cd ~/Documents/dev/workspace'
alias cloudcredo='cd ~/Documents/dev/workspace/cloudcredo/'
alias reset-vb="sudo /Library/StartupItems/VirtualBox/VirtualBox restart"
# }}}

# Shortcuts {{{
alias PS1="PS1='\W $ '"
alias g="git"
alias h="history"
alias l="clear"
alias ls='ls -G'
alias nettop="nettop -m tcp"
alias cp_dir="pwd | pbcopy"
alias add_key="/Volumes/ChrisHedley/add_key"

goto() {
   . ~/bin/cd_to_project $@ 
}
# }}}

# Bosh {{{
alias gfd="bosh -n create release --force && bosh -n upload release && bosh -n deploy"
export BOSH_USE_BUNDLER=true
# }}}

# Rbenv {{{
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# }}}

# vim:foldmethod=marker:foldlevel=0
