# disabled compfix
ZSH_DISABLE_COMPFIX="true"

export ZSH="$HOME/.oh-my-zsh"

CASE_SENSITIVE="true"
plugins=(git history history-substring-search zsh-autosuggestions copypath vi-mode z zsh-syntax-highlighting)
# previous/next command history
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

source $ZSH/oh-my-zsh.sh

# command alias
source "${HOME}/.scripts/alias.bash"

source ~/.zprofile