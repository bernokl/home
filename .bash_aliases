#!/bin/bash
# nice graphical git log, this one is set to view matt
alias gitl-nice='git log $1  --oneline --graph --decorate --color'
# turn on the git repo prompt
alias gp='source /home/bkleinha/projects/bash-git-prompt/gitprompt.sh'
# Start pythn simplehttp server http [port] ie http 987, defaults to localhost
alias http="python -m SimpleHTTPServer"
#vi bash_alias
alias vi-alias='vi ~/.bash_aliases'
#vi bash_alias
alias alias-vi='vi ~/.bash_aliases'

### Funtions ####

##------------------------------------ ##
 #           -- alias-local --           #
##---------source local alias----------##

if [ -f ~/repos/home/.local_aliases ]; then
    . ~/repos/home/.local_aliases
fi
if [ -f ~/projects/home/.local_aliases ]; then
    . ~/projects/home/.local_aliases
fi
if [ -f ~/projects/home/.tw_aliases ]; then
    . ~/projects/home/.tw_aliases
fi
##------------------------------------ ##
 #           -- new-alias --           #
 #          $1 = alias new             #
 #          $2 = alias definition      #
 #          $3 = alias description     #
 # creates new alias & writes to file  #
alias-new () { 
  if [ -z "$1" ]; then
    echo "alias name:"
    read NAME
  else
    NAME=$1
  fi

  if [ -z "$2" ]; then
    echo "alias definition:"
    read DEFINTION
  else
    if [ "$2" = "-cd" ]; then
      DEFINTION='cd '
    else
      DEFINTION=$2
    fi
  fi

  if [ -z "$3" ]; then
    echo "alias description:"
    read DESC
  else
    NAME=$3
  fi
  echo -e "##$DESC$\nalias $NAME='$DEFINTION'" >> ~/.bash_aliases
  . ~/.bash_aliases
}

## Adding new local aliases
alias-new-l () {
  if [ -z "$1" ]; then
    echo "alias name:"
    read NAME
  else
    NAME=$1
  fi
  if [ -z "$2" ]; then
    echo "alias definition:"
    read DEFINTION
  else
    if [ "$2" = "-cd" ]; then
      DEFINTION='cd '
    else
      DEFINTION=$2
    fi
  fi

  if [ -z "$3" ]; then
    echo "alias description:"
    read DESC
  else
    NAME=$3
  fi
  echo -e "##$DESC$\nalias $NAME='$DEFINTION'" >> ~/projects/home/.local_aliases
 . ~/.bash_aliases
}

## Source alias$
alias alias-s='. ~/.bash_aliases'
#List aliases$
alias alias-l='cat ~/.bash_aliases | grep -b1 "^alias"'
# ps faux | grep for a process$
alias ps-grep='ps faux | grep -i $1'
##cd home$
alias cd-h='cd /home/bernokl'
##Grep history for a key word$
alias grep-hist='history | grep -i $1'
##Starts teminator to my specification$
alias term='terminator --geometry=1024x400+0+0 & exit'
##top processes by memory usage$
alias ps-mem='ps -eo pmem,pcpu,vsize,pid,cmd | sort -k 1 -nr | head -5'
##cd project folder$
alias cdp='cd ~/projects'
##quick case insensitive grep$
alias gr-i='grep -i $1'
##Change directory to /home/bkleinha/projects$
alias cdp='cd /home/bkleinha/projects/'
##quick cssh to all webs$
alias vi='vim'
##Easy way to see last 10 commits$
alias gitl-one='git log --oneline | head'
##Sort dir by reverse date and limit$
alias ls-rtail='ls -alrt | tail -$1'
##Grep -v any comments and spaces in a file$
alias grep-vc='egrep -v "(^#.*|^$)"'
##Cat file and grep -v any comments and spaces in a file$
alias cat-vc='cat $1 | egrep -v "(^#.*|^$)"'
##list the directory by time desc and run tail$
alias ls-tail='ls -alrt | tail'
##SSH To first ic salt master$
alias ic-master='ssh berno@172.25.0.25'
##calling python bin using py$
alias py='/usr/bin/python2.7'
