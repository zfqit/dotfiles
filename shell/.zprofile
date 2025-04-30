################################################################
# set homebrew server -> https://brew.idayer.com/guide/change-source
################################################################
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
export HOMEBREW_API_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/api"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/bottles"

function has-command() {
  if command -v "$1" >/dev/null; then
    return 0
  else
    return 1
  fi
}

################################################################
#                           asdf
################################################################

. /usr/local/opt/asdf/libexec/asdf.sh

################################################################
#                           java
################################################################
. ~/.asdf/plugins/java/set-java-home.zsh

################################################################
#                           locale
################################################################
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

################################################################
#                             nvim
# docs: https://github.com/nvm-sh/nvm
# nvm-windows: https://github.com/coreybutler/nvm-windows
################################################################
if [ -f ~/.config/nvim/init.lua ]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

###############################################################
#                             sbin
###############################################################
export PATH="/usr/local/sbin:$PATH"

############################
#           fzf
############################
if [ -f ~/.fzf.zsh ]; then
  source ~/.fzf.zsh
fi

################################################################
# starship
# https://starship.rs/zh-CN/
################################################################
if has-command 'starship'; then
  eval "$(starship init zsh)"
  export STARSHIP_CONFIG="${HOME}/.config/starship/config.toml"
fi
