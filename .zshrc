# Silence zshell warning about insecure directories:
# https://github.com/zsh-users/zsh-completions/issues/680
export ZSH_DISABLE_COMPFIX="true" 
# Enable git command autocompletion for aliased commands
autoload -Uz compinit && compinit
unset completealiases

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
#
# Add NVM to path
if [ -f $HOME/.nvm ]; then
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm alias default lts/dubnium
fi
