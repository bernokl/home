#!/bin/bash
# nice graphical git log, this one is set to view matt
alias g-log='git log $1  --oneline --graph --decorate --color'
# turn on the git repo prompt
alias gp='source ~/repos/bash-git-prompt/gitprompt.sh'
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
## Source alias$
alias alias-s='. ~/.bash_aliases'
#List aliases$
alias alias-l='cat ~/.bash_aliases | grep -b1 "^alias"'
# ps faux | grep for a process$
alias ps-grep='ps faux | grep -i $1'
##cd home$
alias cd-h='cd /home/bernokl'
##Goes to repo dir$
alias cd-rep='cd ~/repos'
##Grep history for a key word$
alias grep-hist='history | grep -i $1'
##Starts teminator to my specification$
alias term='terminator --geometry=1024x400+0+0'
##top processes by memory usage$
alias ps-mem='ps -eo pmem,pcpu,vsize,pid,cmd | sort -k 1 -nr | head -5'
##quick case insensitive grep$
alias gr-i='grep -i $1'
##SSh dw100 as berno$
alias dw100='ssh berno@dw100.colo'
