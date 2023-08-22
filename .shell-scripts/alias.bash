#!/bin/bash

# reload .zshrc
alias reload='source ~/.zshrc'

# cd ..
alias ..='cd ..'

# clear
alias c='clear'

# cp
alias cp='cp -r'

# lsd: https://github.com/Peltoche/lsd
alias ls='lsd'
alias la='ls -al'

# vifm: https://github.com/vifm/vifm
alias vifm='vifm . ~/Desktop/codes'

# vscode: https://code.visualstudio.com/
# vscode-insiders: https://code.visualstudio.com/insiders/
alias code='/usr/local/bin/code'
alias codeins='/usr/local/bin/code-insiders'

# lazygit: https://github.com/jesseduffield/lazygit
alias lg='lazygit'
alias gs='git status'

# docker & dockerc-compose
alias d='docker'
alias dc='docker-compose'

# pnpm
alias p='pnpm'
alias pi='pnpm install'
alias pd='bun run dev'
alias pt='bun run test'
alias pb='bun run build'
alias pu='pnpm i -g pnpm'
