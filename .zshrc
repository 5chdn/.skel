# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
SAVEHIST=10000000
bindkey -e
# End of lines configured by zsh-newuser-install

# Pure zsh
autoload -U promptinit; promptinit
prompt pure

# fzf :)
fpath=( "$HOME/.zfunctions" $fpath )
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
setopt AUTO_CD

# Colors
eval "`dircolors`"
alias ls='ls --color=auto'
alias ll='ls --color=auto -lshaF'
alias grep='grep --color=auto'

# History
HISTCONTROL=ignoredups:erasedups
HISTSIZE=100000
HISTFILESIZE=100000
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Environment
EDITOR=vim
GOPATH="$HOME/.go"
PATH="$PATH:/home/user/.bin"

# fasd :)
eval "$(fasd --init auto)"

