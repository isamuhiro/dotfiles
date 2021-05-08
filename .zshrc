export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="alanpeabody"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Open nautilus with open command. Hint: Type `open .` to open in the current directory.
open() {
    nohup nautilus -w $1 > /dev/null 2>&1 &
}

#nvm defaults
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Android Enviroment (Change as necessary)
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
# JAVA_HOME can change depending of OS or repository, tested on openjdk-8-jdk from ubuntu 16/18 aptitude
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
alias ls='ls --color -h --group-directories-first'

