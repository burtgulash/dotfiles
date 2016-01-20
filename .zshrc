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


export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export LANG=cs_CZ.UTF-8
export EDITOR='vim'
export PAGER='most'

set -o vi; bindkey -v
alias xsel='xclip -sel clip'
