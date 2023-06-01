eval "$(starship init zsh)"
plugins=(git ssh-agent)

# Export
export PATH="$HOME/.jenv/bin:${HOME}/.cargo/bin:$PATH"
export VCPKG_ROOT="/Users/jenoh/vcpkg"

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
