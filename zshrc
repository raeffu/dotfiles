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
plugins=(organization macos git git-auto-fetch gh ruby rails brew gem docker docker-compose yarn ssh)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# Customize to your needs...
alias cls='clear'

alias ls='ls --color'

unsetopt auto_name_dirs
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Java settings
export JAVA_TOOL_OPTIONS="-Dapple.awt.UIElement=true"

# Setting PATH env var

export GITHUB_PAT="$(cat ~/Projects/dotfiles/.github-pat)"
export GITHUB_TOKEN="$(cat ~/Projects/dotfiles/.github-pat)"
export PERSONAL_ACCESS_TOKEN="$(cat ~/Projects/dotfiles/.github-pat)"
export EDITOR="nvim"
export VISUAL="nvim"
export GIT_EDITOR="nvim"

# Added by the Heroku Toolbelt
PATH="/opt/homebrew/heroku/bin:$PATH"

# mysql MAMP
alias mmysql='/Applications/MAMP/Library/bin/mysql'

# Homebrew
# PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
PATH="/opt/homebrew/bin:$PATH"
PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
PATH="/opt/homebrew/opt/findutils/libexec/gnubin:$PATH"
PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
eval `dircolors ~/Projects/dotfiles/dircolors.ansi-universal`

# Doom emacs
PATH="$HOME/.config/emacs/bin:$PATH"

# git diff-highlight
PATH="~/projects/dotfiles:$PATH"

PATH="/opt/homebrew/opt/gettext/bin:$PATH"

# PATH="/opt/homebrew/opt/openssl/bin:$PATH"

export PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

#export PATH="/opt/homebrew/opt/node@14/bin:$PATH"

# Set typewritten ZSH as a prompt
export TYPEWRITTEN_COLORS="git_branch:blue"
autoload -U promptinit; promptinit
prompt typewritten

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# postgresql path
export PATH="/opt/homebrew/opt/postgresql@13/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/raeffu/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# lazygit
export XDG_CONFIG_HOME="$HOME/.config"

# rbenv
export PATH=$PATH:$GEM_HOME/bin
