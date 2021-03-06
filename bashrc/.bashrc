#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### exports
export TERM="xterm-256color"
export GPG_TTY=$(tty)
export EDITOR=nvim

### aliases
alias ls='lsd -lh --group-dirs first'
alias ll='lsd -lah --group-dirs first'

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

# nvm
source /usr/share/nvm/init-nvm.sh

# fzf
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

