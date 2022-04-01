export LC_ALL=en_US.UTF-8

#====
# Starship
#====
source (/usr/local/bin/starship init fish --print-full-init | psub)

#====
# dircolors - color setup for ls
#====
set -x LS_COLORS (vivid generate one-dark)

#====
# Append paths to shell enviroment
#====

# Brew
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/bin" $fish_user_paths

# Composer
set -g fish_user_paths "~/.composer/vendor/bin" $fish_user_paths

# Go
set -x GOPATH $HOME/.go
set -g fish_user_paths "$GOROOT/bin" $fish_user_paths
set -g fish_user_paths "$GOPATH/bin" $fish_user_paths

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
alias gv="open -a 'Sublime Merge' ."

# Images Alias
alias optimize="convert -strip -interlace Plane -sampling-factor 4:2:0 -quality 80%"

# Tool Alias
alias ls="ls --color=auto"
alias l="ls"
alias la="ls -Ah"
alias ll="ls -lh"
alias lla="ls -Alh"
alias cp='rsync -p --progress'

# Composer alias
alias cm="composer"

# K8s alias
alias k="kubectl"
alias kp="kubectl get pods"
alias ks="kubectl get services"

# Craft alias
alias craft="php craft"

# Curl
alias curl-nocache='curl -k -LI -H "Cache-Control: no-cache, no-store, must-revalidate" -H "Pragma: no-cache" -H "Expires: 0"'

# Npm
alias dev="npm run dev"
alias build="npm run build"
alias start="npm run start"

# Functions
alias pep="peco_project"
alias peh="peco_history"