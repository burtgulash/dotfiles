
setopt EXTENDED_GLOB
unsetopt multios
set +o nomatch

set -o vi; bindkey -v

PATH=~/.local/bin:$PATH

umask 022

export PAGER=less
export EDITOR=vim

alias grep='grep --color=auto'
alias vi=vim
alias ls='ls --color=auto'

HISTFILE=~/.zsh_history
HISTSIZE=20000
SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
unsetopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY_TIME

set -k
autoload -Uz promptinit
promptinit
prompt off

autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

# disable ctrl+s freeze screen
stty stop ""

if [ -z "$SSH_AUTH_SOCK" ]; then
	eval "$(ssh-agent -s)"
	eval `keychain --eval --agents ssh id_rsa`
fi

export FZF_ALT_C_COMMAND="fd -t d ."

zstyle ':completion:*' file-sort modification reverse

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats ':%F{green}%b%f'

setopt PROMPT_SUBST
PROMPT='%F{blue}%3~%f${vcs_info_msg_0_} $ '

source /usr/share/fzf/key-bindings.zsh

body() {
    IFS= read -r header
    printf '%s\n' "$header"
    "$@"
}
