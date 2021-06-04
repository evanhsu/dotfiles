# Silence zshell warning about insecure directories:
# https://github.com/zsh-users/zsh-completions/issues/680
export ZSH_DISABLE_COMPFIX="true" 
# Enable git command autocompletion for aliased commands
autoload -Uz compinit && compinit
unset completealiases

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# nvm
# https://github.com/nvm-sh/nvm#installing-and-updating
NVM_DEFAULT_VERSION=lts/fermium
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm alias default $NVM_DEFAULT_VERSION # This loads nvm

