unsetopt CORRECT_ALL
unsetopt CORRECT
setopt EXTENDED_GLOB
unsetopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS

#setopt noclobber
#setopt print_exit_value

limit coredumpsize 0
umask 022

# variables
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"

export PAGER='less'
export EDITOR=/usr/bin/vi
export EDITOR=/usr/bin/vim
export EDITOR=/usr/bin/nvim

# vi keybindings. bindkeys -v for zsh
set -o vi; bindkey -v

# aliases
alias grep='grep --color=auto'
alias vi='nvim'
alias vim='nvim'
alias xsel='xclip -sel clip'
alias ls='ls --color=auto'
alias ll='ls -alF'

# SSH agent at init
if [ -z $SSH_AUTH_SOCK ]; then
    eval $(ssh-agent -s)
fi

# Colors
#man() {
#    env \
#    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
#    LESS_TERMCAP_md=$(printf "\e[1;31m") \
#    LESS_TERMCAP_me=$(printf "\e[0m") \
#    LESS_TERMCAP_se=$(printf "\e[0m") \
#    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
#    LESS_TERMCAP_ue=$(printf "\e[0m") \
#    LESS_TERMCAP_us=$(printf "\e[1;32m") \
#    man "$@"
#}

HISTFILE=~/.zsh_history
HISTSIZE=9999999
SAVEHIST=$HISTSIZE

set -k # prevent 'bad pattern'

# Prompt style
autoload -Uz promptinit
promptinit
prompt walters
