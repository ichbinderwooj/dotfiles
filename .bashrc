#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias tree='tree -C'

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

export PATH="$HOME/.local/bin:$PATH"
export MAKEFLAGS="-j$(nproc)"
export EDITOR="nvim"

alias cfg-git="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rust
. "$HOME/.cargo/env"

# Scripts
eval "$(thefuck --alias)"
pfetch
