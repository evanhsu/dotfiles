# Aliases for 'php artisan '
alias art='php artisan'
alias artisan='php artisan'

# Aliases for Git
alias gs='git status'
alias gl='git log --oneline --decorate --all --graph'
alias gll='git log --oneline --all --graph --pretty=format:"%C(yellow)%h %C(auto)%d %C(reset)- %s {%C(green)%an, %ar%C(reset)}"'
alias gf='git fetch'
alias gc='git add . && git commit -m '

# Aliases for Tmux
alias tml='tmux list-sessions'
alias tma='tmux attach -t '
alias tmn='tmux new -s '

# Aliases for Composer
alias composer='php /usr/local/bin/composer.phar'

# Make an alias for PHP that executes with xdebug enabled.
# Scripts that are called without prefixing with 'php ' will NOT have xdebug enabled, as
#  per the php.ini settings.
#alias php='php -dzend_extension=/usr/local/opt/php56-xdebug/xdebug.so'
# Make an alias for phpunit that can be run from a project root folder
# This uses the 'php' alias to ENABLE xdebug with phpunit.
alias phpunit='php vendor/bin/phpunit'
