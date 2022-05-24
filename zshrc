# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
# export ZSH_THEME="agnoster-raeffu"
export DEFAULT_USER="raeffu"
# export ZSH_THEME="miloshadzic"
export ZSH_THEME="raeffu"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="false"

# Homebrew
export HOMEBREW_NO_ANALYTICS=1

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(organization macos git git-auto-fetch ruby rails brew gem docker docker-compose yarn)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# Customize to your needs...
alias cls='clear'

alias ls='ls --color'

alias e='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient'
alias ec='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient'

unsetopt auto_name_dirs
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Java settings
export JAVA_TOOL_OPTIONS="-Dapple.awt.UIElement=true"

# Setting PATH env var

export GITHUB_PAT="$(cat ~/Projects/dotfiles/.github-pat)"
export EDITOR="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient"
export GIT_EDITOR="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient"

# Added by the Heroku Toolbelt
PATH="/usr/local/heroku/bin:$PATH"

# postgresql path
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# mysql MAMP
alias mmysql='/Applications/MAMP/Library/bin/mysql'

# Homebrew
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:$PATH"
PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
eval `dircolors ~/Projects/dotfiles/dircolors.ansi-universal`

# Doom emacs
PATH="~/.emacs.d/bin:$PATH"

# git diff-highlight
PATH="~/projects/dotfiles:$PATH"

PATH="/usr/local/opt/gettext/bin:$PATH"

# PATH="/usr/local/opt/openssl/bin:$PATH"

export PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="/usr/local/opt/postgresql@10/bin:$PATH"

eval "$(navi widget zsh)"
# Set typewritten ZSH as a prompt
export TYPEWRITTEN_COLORS="git_branch:blue"
autoload -U promptinit; promptinit
prompt typewritten
