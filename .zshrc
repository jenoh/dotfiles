eval "$(starship init zsh)"
# Export
export PATH="$HOME/.jenv/bin:${HOME}/.cargo/bin:$PATH"
export VCPKG_ROOT="/Users/jenoh/vcpkg"
export ZSH="$HOME/.oh-my-zsh"
export PSQL_EDITOR=nvim
plugins=(
        direnv
        git
#       ssh-agent
  keychain
        sudo
        zsh-autosuggestions
        zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh
# Alias
alias php='/usr/local/Cellar/php@7.4/7.4.27/bin/php'
alias ls='exa'
alias l='exa -lbF --git'
alias ll='exa -lbGF --git'
alias llm='exa -lbGd --git --sort=modified' 
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale'
alias lS='exa -1'
alias lt='exa --tree --level=2'
alias get_idf='. $HOME/esp/esp-idf/export.sh'

alias cdb='cd ~/work/billing-api'
alias cca='cd ~/work/ccadmin'
alias dto='cd ~/work/clevercloud-scala-dto'
export PATH=$HOME/.local/bin:$PATH
