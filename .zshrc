unsetopt CORRECT_ALL
unsetopt CORRECT
setopt EXTENDED_GLOB
unsetopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt AUTOCD AUTOPUSHD PUSHD_IGNORE_DUPS
unsetopt multios # stderr redirection doesn't work otherwise
set +o nomatch

#setopt noclobber
#setopt print_exit_value

limit coredumpsize 0
umask 022

# variables
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.local/lib"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:/home/io/.local/share/gem/ruby/2.7.0/bin"

export PAGER='less'
export EDITOR=/usr/bin/vi
export EDITOR=/usr/bin/vim
export EDITOR=/usr/bin/nvim

#source ~/.asdf/asdf.sh

# vi keybindings. bindkeys -v for zsh
set -o vi; bindkey -v
bindkey -s '^l' 'clear -x;tput cup 100 0;^M'

# aliases
alias hist='sort | uniq -c | sort -n'
alias jqr='jq -C . | less -R'
alias jupcon='jupyter qtconsole --style=monokai'
alias grep='grep --color=auto'
alias vi='nvim'
alias vim='nvim'
alias xsel='xclip -sel clip'
alias ls='ls --color=auto'
alias ll='ls -alF'
alias d='dirs -v | head -12'

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
#prompt off

# aws tab completion
#autoload -Uz compinit
#compinit
#source /usr/bin/aws_zsh_completer.sh

# FASD
eval "$(fasd --init auto)"
alias v='f -e nvim'
alias vv='f -ie nvim'
alias jz='f -e jzcat'
alias jzz='f -ie jzcat'

# direnv
eval "$(direnv hook zsh)"

keychain ~/.ssh/id_rsa

export GPG_TTY=$(tty)
