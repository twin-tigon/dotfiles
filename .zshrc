#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#
# Aliases
#

alias c='batcat'
alias cp='nocorrect cp'
alias rm='nocorrect rm'
#alias code='code-insiders --enable-features=WaylandWindowDecorations --ozone-platform-hint=auto'
alias f='fasd -f'
alias l='exa'
alias ls='exa'
alias la='exa -a'
alias ll='exa -l'
alias g='hub'
alias git='hub'
alias upd='sudo apt update && sudo apt upgrade'
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

#
# Sources
#

source $HOME/.secrets
source $HOME/.zsh-vi-mode/zsh-vi-mode.plugin.zsh
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
