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
alias f='fasd -f'
alias l='lsd'
alias ls='lsd'
alias la='lsd -a'
alias ll='lsd -l'
alias g='git'
alias upd='sudo apt update && sudo apt upgrade'
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias code='code-insiders'

#
# Sources
#

source $HOME/.zsh-vi-mode/zsh-vi-mode.plugin.zsh
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
source "$HOME/.rye/env"

#
# nvm
#

autoload -U add-zsh-hook

load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc
