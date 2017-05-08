unsetopt correct_all

#setopt noclobber
#setopt print_exit_value
setopt extendedglob
unsetopt share_history

limit coredumpsize 0
umask 022

# variables
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:/usr/local/bin/site_perl"
export PATH="$PATH:/$HOME/.gem/ruby/2.4.0/bin"

export PAGER='less'
if [ -x $(which vim) ]; then
    export EDITOR=$(which vim)
else
    expert EDITOR=/usr/bin/vi
fi

# vi keybindings. bindkeys -v for zsh
set -o vi; bindkey -v

# aliases
alias xsel='xclip -sel clip'
alias ls='ls --color=auto'
alias ll='ls -alF'
alias pink='ping google.com 2>&1 | awk -F "time=" "{print $2}"'
alias vless='vim -R -'
alias j='jobs'
alias completed='paplay --volume 35000 /usr/share/sounds/freedesktop/stereo/complete.oga'
alias ocaml='ledit ocaml'

if [ -z $SSH_AUTH_SOCK ]; then
    eval $(ssh-agent -s)
fi

function sshx() { /usr/bin/ssh -t $@ "tmux attach -d || tmux new"; }

man() {
    env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

HISTFILE=~/.zsh_history
HISTSIZE=9999999
SAVEHIST=$HISTSIZE

set -k # prevent 'bad pattern'

autoload -Uz promptinit
promptinit

prompt walters
prompt off
