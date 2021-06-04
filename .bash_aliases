# Aliases for 'php artisan '
alias art='php artisan'
alias artisan='php artisan'

alias ll='ls -al'

# Aliases for Git
alias gs='git status'
alias gl='git log --oneline --decorate --all --graph'
alias gll='git log --oneline --all --graph --pretty=format:"%C(yellow)%h %C(auto)%d %C(reset)- %s {%C(green)%an, %ar%C(reset)}"'
alias gf='git fetch'
alias gc='git add . && git commit -m '
alias gco='git checkout'
alias gpr='git pull --rebase'

# Git branch aliases
# alias gbcurrent="git branch | grep \* | cut -d ' ' -f2" # "git branch current" # This alias causes errors in the console when a new shell is launched
alias gbDa='git branch | egrep -v "(master|\*)" | xargs git branch -D' # "git branch delete all"
#alias gbn='git fetch && git checkout origin/master && git checkout -b' # "git branch new"

# Git reset aliases
#alias grorigin="git fetch && sleep 1 && git reset --hard origin/$(gbcurrent)" # "git reset origin"
#alias grs="git reset --soft $(git merge-base master $(gbcurrent)) && git status" # "git reset soft"

# Aliases for Tmux
alias tml='tmux list-sessions'
alias tma='tmux attach -t '
alias tmn='tmux new -s '

# MacOS
alias finder='open'

# Docker
alias dc="docker-compose"

# Kubernetes
alias kc="kubectl"
alias kcf="kubectl apply -f"
alias kcbash="kubectl run bash -it --generator=run-pod/v1 --rm --image=node bash"

# Make it easy to make it easy...
alias aliases="vim ~/.bash_aliases && source ~/.bash_aliases"
alias spro="source ~/.profile"

alias json='pbpaste | python -m json.tool | less'

alias kops-intuit-ami-cluster='kops create cluster --image ami-0a0bd2cbd0de3c79d --node-size=t3.small --master-size=t3.small --zones us-west-2b ${NAME}'

# Aliases for Composer
alias composer='php /usr/local/bin/composer.phar'
# Run Composer commands without loading xdebug. This is especially helpful for 'composer test'.
alias comp='php -n -c /usr/local/etc/php/7.2/php-noxdebug.ini /usr/local/bin/composer '


# Make an alias for PHPUnit that executes with xdebug enabled.
# Scripts that are called without prefixing with 'php ' will NOT have xdebug enabled, as
#  per the php.ini settings.
#alias php='php -dzend_extension=/usr/local/opt/php56-xdebug/xdebug.so'
# Make an alias for phpunit that can be run from a project root folder
# This uses the 'php' alias to ENABLE xdebug with phpunit.
alias phpunit='php vendor/bin/phpunit'
