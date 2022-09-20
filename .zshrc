# profiling
# zmodload zsh/zprof

# p10k pre-init
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# pyenv
export PATH=$HOME/.pyenv/bin:$PATH
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# zim
export ZIM_HOME=~/.zim
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
source ${ZIM_HOME}/init.zsh

# aliases
alias ls='exa'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias vim='nvim'

# variables
export LC_ALL=en_US.UTF-8
export EDITOR=vim
export ZSH_CACHE_DIR=~/.zsh/cache
export HISTFILE=~/.zsh/zsh_history
export HISTSIZE=5000
export SAVEHIST=10000
export BAT_THEME="Sublime Snazzy"

# options
setopt completealiases
setopt globdots
unsetopt autocd beep

# key bindings
bindkey '^r' history-incremental-search-backward
bindkey '^w' backward-kill-word

# completion
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit
compinit -i
zmodload -i zsh/complist
zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' list-colors ''
# zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# gcloud
if [ -f '/Users/sergei.sokolov/tmp/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sergei.sokolov/tmp/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/sergei.sokolov/tmp/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sergei.sokolov/tmp/google-cloud-sdk/completion.zsh.inc'; fi
export CLOUDSDK_PYTHON=python3.8

# poetry
export PATH=$PATH:/Users/sergei.sokolov/.local/bin
export PATH="$HOME/.poetry/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
export NVM_LAZY=1
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
 nvm() {
    unset -f nvm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm "$@"
}

node() {
    unset -f node
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    node "$@"
}

npm() {
    unset -f npm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    npm "$@"
}

# cargo
source $HOME/.cargo/env

# p10k init
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# profiling
# zprof
