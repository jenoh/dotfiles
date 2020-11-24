#--------------------------#
#    EXPORT/PATH   # 
#--------------------------#

NPM_BIN="${HOME}/.npm-packages/bin"
BIN="${HOME}/bin"
export ANDROID_HOME=${HOME}/Android/Sdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export PATH=${PATH}:${BIN}:${NPM_BIN}:${ANDROID_HOME}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:${JAVA_HOME}/bin

#-------------------#
#    PROMPT   # 
#-------------------#

setopt prompt_subst
autoload -U colors && colors # Enable colors in prompt

branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#PS1="%{%F{red}%}%n%{%f%}@%{%F{blue}%}%m %{%F{yellow}%}%~ %{%f%}$fg[red]%}$(branch)%{$reset_color%} "

#--------------------#
#    ALIAS          # 
#--------------------#

alias ll="exa -lgF --sort type --time-style iso"
alias lla="exa -lagF --sort type --time-style iso"
alias llag="exa -lagF --git --sort type --time-style iso"
alias llat="exa -lagTF --sort type --time-style iso"
alias ll1="exa -a1F --sort type"
alias ll1t="exa -a1TF --sort type"

alias cc="clear"

#--------------------#
#    SETTINGS  # 
#--------------------#

if [ -f /home/jenoh/.tnsrc ]; then 
    source /home/jenoh/.tnsrc 
fi


# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

eval "$(starship init zsh)"
