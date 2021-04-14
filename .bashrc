umask 022

# vi
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert  'Control-l: clear-screen'

# ps1
_status_() { test 0 -ne $? && echo "[$_] "; }
export PS1="\`_status_\`\u@\h:\w\\$ "

# fzf
source /usr/share/fzf/key-bindings.bash

cd_with_fzf() {
    cd $HOME && cd "$(fd -t d -I | fzf --preview="tree -L 1 {}" --bind="space:toggle-preview" --preview-window=:hidden)" && echo "$PWD"
}
[[ -z $(which fd) ]] || export FZF_DEFAULT_COMMAND='fd --type f -I'

bind -m vi-command -x '"\C-h": cd_with_fzf'
bind -m vi-insert -x '"\C-h": cd_with_fzf'


# variables
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.local/lib"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:/home/io/.local/share/gem/ruby/2.7.0/bin"

export PAGER=less
export EDITOR=/usr/bin/vi
export EDITOR=/usr/bin/vim
export EDITOR=/usr/bin/nvim

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

# history
shopt -s histappend
shopt -s cmdhist

HISTFILE=~/.bash_history
HISTSIZE=999
HISTFILESIZE=9999

# direnv
eval "$(direnv hook bash)"

# gpg
export GPG_TTY=$(tty)

# ssh agent
if [ -z $SSH_AUTH_SOCK ]; then
    eval $(ssh-agent -s)
fi

# keychair
keychain ~/.ssh/id_rsa
