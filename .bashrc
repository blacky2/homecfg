# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
# -------------------------- #

# bash history ignore duplicates
HISTCONTROL=ignoredups 
# bash history file
# export HISTFILE=/dev/null

# add special cmds to path
export PATH=$PATH:~/bin

# enable comand line completion if installed for not login shels
[[ -f /etc/profile.d/bash-completion.sh ]] && source /etc/profile.d/bash-completion.sh

# set vimpager as manpage reader
export MANPAGER=/usr/bin/vimmanpager

# TODO set this system wide someday
export EDITOR=vim

# home git cfg 
alias homecfg='git --git-dir=$HOME/.homecfg.git/ --work-tree=$HOME'
