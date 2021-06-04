# Aliases for 'php artisan '
alias art='php artisan'
alias artisan='php artisan'
alias sail='./vendor/bin/sail'

alias ll='ls -al'

# Aliases for Git
alias gs='git status'
alias gl='git log --oneline --decorate --all --graph'
alias gll='git log --oneline --all --graph --pretty=format:"%C(yellow)%h %C(auto)%d %C(reset)- %s {%C(green)%an, %ar%C(reset)}"'
alias gf='git fetch'
alias gc='git add . && git commit -m '
alias gco='git checkout'
alias gpr='git pull --rebase'
alias grh='git reset --hard'

# Git branch aliases
alias gbcurrent="git branch | grep \* | cut -d ' ' -f2" # "git branch current"
alias gbDa='git branch | egrep -v "(main|master|\*)" | xargs git branch -d' # "git branch delete all"
alias gbn='git fetch && git checkout origin/master && git checkout -b' # "git branch new"

# Git reset aliases
#alias grorigin="git fetch && sleep 1 && git reset --hard origin/$(gbcurrent)" # "git reset origin"
#alias grs="git reset --soft $(git merge-base master $(gbcurrent)) && git status" # "git reset soft"

# Aliases for Tmux
alias tml='tmux list-sessions'
alias tma='tmux attach -t '
alias tmn='tmux new -s '

# VS Code
alias c='code .'

# MacOS
alias finder='open'

# Docker
alias dc="docker-compose"

# Kubernetes
alias kc="kubectl"
alias kcf="kubectl apply -f"
alias kcbash="kubectl run bash -it --generator=run-pod/v1 --rm --image=node bash"
alias kccon="kubectl config current-context"
alias kcuse="kubectl config use-context"

alias argoport="kubectl port-forward svc/argocd-server -n argocd 8080:443"

# Make it easy to make it easy...
alias aliases="vim ~/.bash_aliases && source ~/.zshrc"
alias spro="source ~/.zshrc"
alias notes="vim ~/Documents/notes.md"

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
