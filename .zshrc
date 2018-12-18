# The following lines were added by compinstall
zstyle :compinstall filename '/home/user/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
SAVEHIST=10000000
bindkey -e
# End of lines configured by zsh-newuser-install

# Pure zsh
fpath=( "$HOME/.zfunc" $fpath )
autoload -U promptinit; promptinit
prompt pure
fpath=( "$HOME/.zfunc" $fpath )

# fzf :)
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
SHELL="/usr/bin/zsh"

# fasd :)
eval "$(fasd --init auto)"
alias j='fasd_cd -i'

# the fuck
eval $(thefuck --alias)

# fish-like
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# bindkey
bindkey "^?" backward-delete-char
bindkey "^[[1;5C" emacs-forward-word
bindkey "^[[1;5D" emacs-backward-word
bindkey "^[[2~" overwrite-mode
bindkey "^[[3~" delete-char
bindkey "^[[F" end-of-line
bindkey "^[[H" beginning-of-line
