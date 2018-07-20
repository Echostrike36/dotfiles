#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


###>>>>> Defaults <<<<<<###
BROWSER=/usr/bin/firefox
EDITOR=/usr/bin/vim

###>>>>> History Settings <<<<<###
# Setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000
# Don't put duplicate lines or lines starting with space in the history.bash(1)
HISTCONTROL=ignoreboth


###>>>>>> Prevent Clobber <<<<<<###
# Prevent Clobber by Commands
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Prevent Clobber by Redirection - Bypass restriction with >|
set -o noclobber 


###>>>>>> Add Color <<<<<<###
# Add Color to Terminal
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Add Color to Man Pages
export LESS_TERMCAP_md=$'\E[01;37m'
export LESS_TERMCAP_us=$'\E[00;37m'
#export LESS_TERMCAP_so=$'\E[01;40;37m'

# Add Color to Prompt
PS1='\[\033[00;37m\](\[\033[01;34m\]\u\[\033[00;37m\])\[\033[00;37m\]\[\033[00;37m\](\[\033[01;32m\]\h\[\033[00;37m\])(\[\033[01;33m\]\w\[\033[00m\])\[\033[01;37m\]$ \[\033[00m\]'

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# 256 bit color terminal for tmux - This is required for Molokai in vim in tmux
#TERM=screen-256color
