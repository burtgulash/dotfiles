# plugins
if [ ! -d $HOME/.antigen ]; then
    curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > .antigen.zsh
fi
source $HOME/.antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle mercurial
antigen bundle hchbaw/opp.zsh
# antigen theme kardan
antigen theme mrtazz
antigen apply

unsetopt correct_all

#setopt noclobber
#setopt print_exit_value

limit coredumpsize 0
umask 022

# variables
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$HOME/.local/bin"

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
alias pink='ping google.com 2>&1 | awk -F "time=" "{print $2}"'

if [ -z $SSH_AUTH_SOCK ]; then
    eval $(ssh-agent -s)
fi
