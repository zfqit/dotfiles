################################################################
# set homebrew server -> https://brew.idayer.com/guide/change-source
################################################################
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.cloud.tencent.com/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.cloud.tencent.com/homebrew/homebrew-core.git"
export HOMEBREW_API_DOMAIN="https://mirrors.cloud.tencent.com/homebrew-bottles/api/"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.cloud.tencent.com/homebrew-bottles/bottles"

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
# export LANG="zh_CN.UTF-8"
# export LC_ALL="zh_CN.UTF-8"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

################################################################
#                           pnpm
################################################################
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

################################################################
#                           nvim
################################################################
if [ -f ~/.config/nvim/init.lua ]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

################################################################
#                             nvim
# docs: https://github.com/nvm-sh/nvm
# nvm-windows: https://github.com/coreybutler/nvm-windows
################################################################
################################################################
#                             adb
# docs: https://developer.android.com/studio/command-line/adb.html
################################################################
export ANDROID_HOME=/Users/zhou/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

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
# source bashrc
################################################################
source ~/.bashrc

################################################################
# starship
# https://starship.rs/zh-CN/
################################################################
eval "$(starship init zsh)"
export STARSHIP_CONFIG="${HOME}/.config/starship/config.toml"