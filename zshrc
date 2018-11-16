# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
# export ZSH_THEME="agnoster-raeffu"
export DEFAULT_USER="rlaubscher"
# export ZSH_THEME="miloshadzic"
export ZSH_THEME="raeffu"
# export ZSH_THEME="robyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Homebrew
export HOMEBREW_NO_ANALYTICS=1

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(organization osx git ruby rails brew gem)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# Customize to your needs...
alias cls='clear'
alias ls='ls --color'
alias e='/usr/local/Cellar/emacs/25.3/bin/emacsclient'
alias ec='/usr/local/Cellar/emacs/25.3/bin/emacsclient'

unsetopt auto_name_dirs
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Java settings
export JAVA_TOOL_OPTIONS="-Dapple.awt.UIElement=true"

# Setting PATH env var

export GITHUB_PAT="$(cat /Users/rlaubscher/Projects/dotfiles/.github-pat)"
export EDITOR="/usr/local/Cellar/emacs/25.3/bin/emacsclient"
export GIT_EDITOR="/usr/local/Cellar/emacs/25.3/bin/emacsclient"

# Added by the Heroku Toolbelt
PATH="/usr/local/heroku/bin:$PATH"

# postgresql path
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# mysql MAMP
alias mmysql='/Applications/MAMP/Library/bin/mysql'

# Homebrew
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/Cellar/coreutils/8.24/libexec/gnubin:/usr/local/bin:$PATH"
eval `dircolors ~/Projects/dotfiles/dircolors.ansi-universal`

# git diff-highlight
PATH="~/projects/dotfiles:$PATH"

export PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
