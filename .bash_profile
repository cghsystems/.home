#!/usr/bin/env bash

# Add rvm gems and nginx to the path
export PATH=$PATH:~/.gem/ruby/1.8/bin:/opt/nginx/sbin

# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='Bobby'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Set my editor and git editor
export EDITOR="vim"
export GIT_EDITOR='vim'

# Set the path nginx
export NGINX_PATH='/opt/nginx'

# Don't check mail when opening terminal.
unset MAILCHECK

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true


goto() {
   . ~/bin/cd_to_project $@
}

#Docker (Vagrant)
export DOCKER_HOST=tcp://192.168.59.103:2375
export DOCKER_TLS_VERIFY=1
export DOCKER_CERT_PATH=/Users/chris/.boot2docker/certs/boot2docker-vm

#GO LANG
export GO_PATH=~/workspace/gocode
export GOPATH=~/workspace/gocode
export PATH=/Users/chris/workspace/gocode/bin/:$PATH

alias vi='vim'

# Load Bash It
source $BASH_IT/bash_it.sh

export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/chris/.boot2docker/certs/boot2docker-vm

chruby 2.1.2
