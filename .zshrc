NPM_BIN="${HOME}/.npm-packages/bin"
BIN="${HOME}/bin"
export ANDROID_HOME=${HOME}/Android/Sdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
#export PATH=$PATH:$ANDROID_HOME/tools
#export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=${PATH}:${BIN}:${NPM_BIN}:${ANDROID_HOME}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:${JAVA_HOME}/bin

PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{blue}%1~%f%b % # '

###-tns-completion-start-###
if [ -f /home/jenoh/.tnsrc ]; then 
    source /home/jenoh/.tnsrc 
fi
###-tns-completion-end-###
