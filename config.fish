export LC_ALL=en_US.UTF-8

# Changing swift toolchain
set -u fish_user_paths "/Library/Developer/Toolchains/swift-latest/usr/bin" $fish_user_paths

# Laravel Artisan 
alias a="php artisan"
alias mfs="php artisan migrate:fresh && php artisan db:seed"
alias mf="php artisan migrate:fresh"
alias migrate="php artisan migrate"
alias tk="php artisan tinker"
alias s="php artisan serve"
alias ds="php artisan dump-server"
alias p="vendor/bin/phpunit"
alias pf="vendor/bin/phpunit --filter "

# Git Alias
alias nah='git reset --hard;git clean -df'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gpo="git push origin"
alias git="hub"

# Images Alias
alias optimize="convert -strip -interlace Plane -sampling-factor 4:2:0 -quality 80%"

# Tool Alias
alias l="ls"
alias cp='rsync -p --progress'
