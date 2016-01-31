# plugins
if [ ! -d $HOME/.antigen ]; then
    curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > .antigen.zsh
fi
source $HOME/.antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle mercurial
antigen bundle hchbaw/opp.zsh
antigen theme robbyrussell
antigen apply


setopt noclobber
setopt print_exit_value

limit coredumpsize 0
umask 022

# variables
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

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
alias ll='ls -alF'
alias webserver="ip addr show | grep 'inet ' | grep -v '127.0.0.1'; python3 -m http.server"

# keyboard settings
setxkbmap cz dvorak-ucw
xset r rate 310 60

# move to X
#export LANG=cs_CZ.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# screen saver off
xset -dpms
xset s noblank
xset s off
