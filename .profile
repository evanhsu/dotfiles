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

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"


export ANDROID_HOME=${HOME}/Android/Sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/tools/bin
export PATH=${PATH}:${ANDROID_HOME}/platform-tools


export JAVA_HOME=${HOME}/jdk1.8.0_121
export PATH=${PATH}:${JAVA_HOME}/bin

export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
    . "$NVM_DIR/nvm.sh" # This loads nvm
    nvm alias default 8.2.0
    nvm use default
fi

# Yarn
command -v yarn >/dev/null 2>&1 && {
	export PATH="$PATH:`yarn global bin`"
}


# PhpStorm
export PATH=${PATH}:/opt/phpstorm/bin

# Ubuntu make installation of Ubuntu Make binary symlink
export PATH=${PATH}:${HOME}/.local/share/umake/bin

# Add Composer's global vendor folder to path
export PATH=${PATH}:$HOME/.config/composer/vendor/bin

# Add GoLang
export PATH=${PATH}:/opt/go/bin

# Run Fusuma to capture swipe gestures
fusuma -d --config=~/.fusuma.yml
