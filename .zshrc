#!/bin/zsh
#------------------------------------------- completion
autoload -U compinit
compinit
zstyle ':completion::complete:*' use-cache on

#------------------------------------------- prompt
autoload -U promptinit
promptinit
prompt gentoo

#------------------------------------------- correction
setopt correctall

#------------------------------------------- globbing (wildcards)
setopt extendedglob

#------------------------------------------- command history
export HISTSIZE=2000
export HISTFILE="$HOME/.zsh_history"
export SAFEHIST=$HISTSIZE
# no duplicates
setopt hist_ignore_all_dups
# no recording for space prefix commands
setopt hist_ignore_space

#------------------------------------------- command aliases
# colored ls output
alias ls='ls -F --color=auto'
# colored grep output
alias grep='grep --color=auto'


#------------------------------------------- file aliases (std file actions)
alias -s txt=$EDITOR
alias -s html=uzbl-browser # TODO BROWSER ENV

#------------------------------------------- Key's
# backward delete
bindkey "\e[3~" delete-char


#------------------------------------------- END
