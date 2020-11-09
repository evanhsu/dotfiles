# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"


export ANDROID_HOME=${HOME}/Android/Sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/tools/bin
export PATH=${PATH}:${ANDROID_HOME}/platform-tools


# export JAVA_HOME=${HOME}/jdk1.8.0_121
# export PATH=${PATH}:${JAVA_HOME}/bin

# Add NVM to path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
nvm alias default lts/dubnium

# Yarn
command -v yarn >/dev/null 2>&1 && {
	export PATH="$PATH:`yarn global bin`"
}

# Add Homebrew "taps" to the path
export PATH="/usr/local/sbin:$PATH"

# Add python scripts to PATH
# export PATH="~/Library/Python/2.7/bin:$PATH"

# Add composer vendor code to path (Laravel installer)
# export PATH="~/.composer/vendor/bin:$PATH"

# Add the protobuf compiler "protoc" to the path
#export PATH="~/Development/grpc/bins/opt:$PATH"
#export PATH="/Users/ehsu2/Development/grpc/bins/opt:$PATH"
#export PATH="/Users/ehsu2/Development/grpc/bins/opt/protobuf:$PATH"

# PhpStorm
export PATH=${PATH}:/opt/phpstorm/bin

# Ubuntu make installation of Ubuntu Make binary symlink
export PATH=${PATH}:${HOME}/.local/share/umake/bin


# Activate auto-complete for bash
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Enable Git completion for commands and branch names
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash

  # Add git completion to aliases
  __git_complete gco _git_checkout
fi
