export LC_ALL=en_US.UTF-8

#====
# dircolors - color setup for ls
#====
eval (gdircolors -c ~/.dir_colors)

#====
# Append paths to shell enviroment
#====

# Brew
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/bin" $fish_user_paths

# Composer
set -g fish_user_paths "~/.composer/vendor/bin" $fish_user_paths

#====
# Aliases
#====

# Laravel Artisan 
alias a="php artisan"
alias mfs="php artisan migrate:fresh && php artisan db:seed"
alias mf="php artisan migrate:fresh"
alias migrate="php artisan migrate"
alias tk="php artisan tinker"
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
alias l="ls --color"
alias ls="ls --color"
alias cp='rsync -p --progress'

# Composer alias
alias cm="composer"

# K8s alias
alias k="kubectl"
alias kp="kubectl get pods"
alias ks="kubectl get services"

# Craft alias
alias craft="php craft"