PS1='\[\e[0;33m\][\w]\[\e[m\]\[\e[0;36m\]#\[\e[m\] '

alias cls='clear'
alias history='fc -l 1'

alias ll='ls -l'
alias l='ls -la'
alias ..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'

alias g='git'
alias ga='git add'
alias gaa='git add .'
alias gm='git merge --no-ff'
alias gmn='git merge --no-ff --no-commit'
alias gmf='git merge --ff-only'
alias gs='git status -s -b'
alias gl='git pull'
alias glr='git pull --rebase'
alias gr='git remote'
alias grm='git rm'
alias gf='git fetch'
alias gp='git push'
alias gd='git diff'
alias gdm='git diff | grep "<<<<<"'
alias gdc='git diff --cached'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a -v'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias glg='git log --stat'
alias gg='git log --graph'
alias gco='git checkout'
alias gsv='git svn'
alias gt='git tag -a'

function current_branch() {
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	echo ${ref#refs/heads/}
}

alias ggpull='git pull origin $(current_branch)'
alias ggpush='git push origin $(current_branch)'
alias gph='git push heroku $(current_branch)'
alias glh='git pull heroku $(current_branch)'
alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'

# ls colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# Enable ls colors
if [ "$DISABLE_LS_COLORS" != "true" ]
then
  # Find the option for using colors in ls, depending on the version: Linux or BSD
  ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty' || alias ls='ls -G'
fi

if [[ x$WINDOW != x ]]
then
    SCREEN_NO="%B$WINDOW%b "
else
    SCREEN_NO=""
fi

# git theming default: Variables for theming the git info prompt
ZSH_THEME_GIT_PROMPT_PREFIX="git:("         # Prefix at the very beginning of the prompt, before the branch name
ZSH_THEME_GIT_PROMPT_SUFFIX=")"             # At the very end of the prompt
ZSH_THEME_GIT_PROMPT_DIRTY="*"              # Text to display if the branch is dirty
ZSH_THEME_GIT_PROMPT_CLEAN=""               # Text to display if the branch is clean
