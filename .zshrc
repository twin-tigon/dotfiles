#
# Aliases
#

alias c='bat'
alias cp='nocorrect cp'
alias rm='nocorrect rm'
alias code='code-insiders --enable-features=WaylandWindowDecorations --ozone-platform-hint=auto'
alias f='fasd -f'
alias l='exa'
alias ls='exa'
alias la='exa -a'
alias ll='exa -l'
alias g='hub'
alias git='hub'
alias upd='aur sync --rebuild visual-studio-code-insiders-bin && aur sync -u && sudo pacman -Syu'
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

#
# Sources
#

source $HOME/.secrets
source /usr/share/fzf/key-bindings.zsh
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

#
# nvm
#
nvm use default --silent

