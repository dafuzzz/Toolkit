#!/bin/bash

# Command alias
alias ll="ls -lh"
alias setproxy=doSetProxy
alias shdn="sudo shutdown -h now"
alias unsetproxy=doUnsetProxy
alias v="vim"


# Docker alias
alias dps='docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.Image}}"'
alias dis='docker images'

alias dcup='docker-compose up'
alias dcdn='docker-compose down'
alias dcstart='docker-compose start'
alias dcstop='docker-compose stop'
alias dcrestart='docker-compose restart'


# Git alias, refresh every 2 seconds
alias wgloga='watch --color -n 2 git log --oneline --graph --decorate --color=always --all'
alias wglog='watch --color  -n 2 git log --oneline --graph --decorate --color=always'


doSetProxy(){
    export all_proxy=127.0.0.1:7890
    export http_proxy=127.0.0.1:7890
    export https_proxy=127.0.0.1:7890
}

doUnsetProxy(){
    unset all_proxy
    unset http_proxy
    unset https_proxy
}
