#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
PS1="\[\033[0;37m\]\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[0;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\u@\h'; else echo '\[\033[0;32m\]\u@\h'; fi)\[\033[0;34m\] \w \$\[\033[00m\] "

# Colors
eval "`dircolors`"
alias ls='ls --color=auto'
alias ll='ls --color=auto -lshaF'
alias grep='grep --color=auto'

# History
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000
export HISTFILESIZE=100000
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
shopt -s checkwinsize

# Environment
export EDITOR=vim
export GOPATH="$HOME/.go"
export PATH="$PATH:/home/user/.bin"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
