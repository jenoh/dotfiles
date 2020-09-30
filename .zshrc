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

#PS1='%{$fg[red]%}%n %{$fg[white]%}%(3~|../%2~|%~)%{$fg[red]%}$(branch) %{$reset_color%}'
PS1="%{%F{red}%}%n%{%f%}@%{%F{blue}%}%m %{%F{yellow}%}%~ %{$%f%} "

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
