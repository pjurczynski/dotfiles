#!/bin/bash

# Reload these aliases
alias ra='for f in ~/.bash/*; do . $f; done'
alias srails='bin/rails'
alias srake='bin/rake'
alias srspec='bin/rspec'

# Code related aliases
alias gdb="gdb --quiet"
if ! uname | grep -q Darwin; then
  alias open=gnome-open
fi
alias sc=screen
alias scl="screen -list"

function findWithSpec
{
  typeset dirs=
  typeset egrepopts="-v '\\.sw[po]\\$|/\\.git/|^\\.git/'"
	typeset nullprint=
	while [[ $# != 0 ]];
	do
		if [[ "$1" == "-Z" ]]; then
			egrepopts="-Zz $egrepopts"
			nullprint="-print0"
			shift
		elif [[ -d "$1" ]]; then
			dirs="$dirs '$1'"
			shift
		else
			break
		fi
	done
	if [[ -z "$dirs" ]]; then
		dirs=.
	fi
	eval "find $dirs $nullprint $@ | egrep $egrepopts"
}

function findsrc
{
	findWithSpec "$@" '-name \*.java -o -name \*.scala -o -name Makefile -o -name \*.h -o -name \*.cpp -o -name \*.c'
}
alias findsrcz="findsrc -Z"

function findj
{
	findWithSpec "$@" '-name \*.java'
}
alias findjz="findj -Z"

function finds
{
	findWithSpec "$@" '-name \*.scala'
}
alias findsz="finds -Z"

function findsj
{
  (finds "$@"; findj "$@")
}
alias findsjz="findsj -Z"

function findh
{
	findWithSpec "$@" '-name \*.h -o -name \*.hpp'
}
alias findhz="findh -Z"

function findc
{
	findWithSpec "$@" '-name \*.cpp -o -name \*.c'
}
alias findcz="findc -Z"

function findch
{
  (findc "$@"; findh "$@")
}
alias findchz="findch -Z"

function findf
{
	findWithSpec "$@" "-type f"
}
alias findfz="findf -Z"

function findm
{
	findWithSpec "$@" "-name Makefile"
}
alias findmz="findm -Z"

alias f=findWithSpec

function findClass
{
  typeset pattern="${1-}"
  if [ -z "$pattern" ]; then
    echo "No pattern supplied" 1>&2
    return 1
  fi
  echo $CLASSPATH | tr ':' '\n' | grep -v '^ *$' | \
  while read entry
  do
    echo "====== $entry ======"
    if [ "${entry%.jar}" != "$entry" ]; then
      if [ -f "$entry" ]; then
        jar tf "$entry" | egrep $pattern
      fi
    elif [ -d "$entry" ]; then
      find "$entry" | egrep -i $pattern
    fi
  done
}

# Assorted
alias swps='find . -name .\*.sw[op]'
alias rmstd='xargs rm -vf'
alias xag='xargs -0 egrep'


# Assorted
alias xg='xargs egrep'
alias xgi='xargs egrep -i'
alias pd="cd -"
alias grss='for f in $(find . -type d -a -name .git); do x=${f%/.git}; echo ==== $x; (cd $x; gss); done'
alias gd='git diff'
alias gdc='git diff --cached'
alias o=octave
alias mvn=~/bin/mvn-colour

alias sc=screen
alias scl="screen -list"

alias pgrep="pgrep -fl"

alias bc="bc -lq"

# some ls aliases
alias ll='ls -halF'
alias la='ls -A'
alias l='ls -CF'

# programs
alias firefox='firefox -P default'
function ff
{
  if [ $# = 0 ]; then
    echo "usage: ff <file>" 1>&2
    return 1
  fi
  if [ -d "$1" ]; then
    echo "That's a directory, dumbass." 1>&2
    return 1
  elif [ "${1%/*}" = "$1" ]; then
    firefox -new-tab "file://$(pwd)/$1"
  else
    \cd "${1%/*}"
    typeset dir="$(pwd)"
    \cd - >/dev/null
    firefox -new-tab "file://$dir/${1##*/}"
  fi
  return 0
}

alias pg='ps -ef | grep '
alias be='bundle exec'

if which dircolors > /dev/null; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto -F'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

alias kill='kill -9'

# git aliases
alias gls='git status --porcelain'
alias gc='git commit'
alias ga='git add'
alias gpu='git push'
alias gpl='git pull'
alias gco='git checkout'
alias gd='git diff'
alias gb='git branch'
alias gbl='git branch --list'
alias gm='git merge'
alias ggls='for f in $(find . -name .git -a -type d); do d=${f%/.git}; echo ---- $d; (cd $d; git status --porcelain); done'
alias addM='git status --porcelain | grep "^.M " | cut -c4- | xargs git add'
alias addQ='git status --porcelain | grep "^?? " | cut -c4- | xargs git add'
alias addD='git status --porcelain | grep "^.D " | cut -c4- | xargs git rm'
