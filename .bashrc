#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="\[\033[0;37m\]\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[0;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\u@\h'; else echo '\[\033[0;32m\]\u@\h'; fi)\[\033[0;34m\] \w \$\[\033[00m\] "

eval "`dircolors`"
alias ls='ls --color=auto'
alias ll='ls --color=auto -lshaF'
alias grep='grep --color=auto'

alias fbig="find . -size +128M -type f -printf '%s %p\n'| sort -nr | head -16"
alias rdir='mkdir -p ./$(cat /dev/urandom | tr -cd 'a-z0-9' | head -c 8)/$(cat /dev/urandom | tr -cd 'a-z0-9' | head -c 4)/'

alias tmuxr="tmux new-session \; send-keys 'syncthing' C-m \; split-window -v -p 85 \; send-keys 'parity --mode passive --pruning fast --warp' C-m \; split-window -v -p 82 \; split-window -h \; send-keys 'top' C-m \; split-window -v \; send-keys 'sudo iotop' C-m \; select-pane -t 2 \; split-window -v \; send-keys 'weechat' C-m \; select-pane -t 2 \; send-keys 'archey' C-m \; split-window -h \; send-keys 'pacaur -Syyu' C-m \;"

alias fri="$(df -h | grep home | awk '{print $1 $4\"/\"$2\" (\"$5\")\";}')"

alias scan-png="/usr/bin/hp-scan -s file -m color -t mm --size=a4 -x jpeg -r 450 -f ~/Pictures/Scans/`$(date +%s)`.png"
alias scan-pdf="/usr/bin/hp-scan -s file -m color -t mm --size=a4 -x jpeg -r 150 --adf --dup -f ~/Documents/Scans/`$(date +%s)`.pdf"

export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000
export HISTFILESIZE=100000
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
shopt -s checkwinsize

export EDITOR=vim

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
