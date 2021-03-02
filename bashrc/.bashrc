#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### exports
export TERM="xterm-256color"
export GPG_TTY=$(tty)
export EDITOR=nvim

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

### path
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

### "bat" as manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
