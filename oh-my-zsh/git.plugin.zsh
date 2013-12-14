# Aliases
alias g='git'
compdef g=git

alias ga='git add'
# alias gaa='git add .'
alias gaa='git add -A'
alias gau='git add -u'

alias grm='git rm'
alias gm='git merge --no-ff'
alias gmn='git merge --no-ff --no-commit'
alias gmf='git merge --ff-only'

alias gs='git status -s -b'
compdef _git gs=git-status

alias gl='git pull'
compdef _git gl=git-pull

alias glr='git pull --rebase'
compdef _git glr=git-pull

alias gr='git remote'
alias grs='git remote show'
alias gf='git fetch'
alias gft='git fetch --tags'

alias gp='git push'
compdef _git gp=git-push

alias gd='git diff'
alias gds='git diff --staged'
alias gdh='git diff HEAD'
compdef _git gd=git-diff

alias gdm='git diff | grep "<<<<<"'
compdef _git gdm=git-diff

alias gdc='git diff --cached'
compdef _git gdc=git-diff

alias gst='git status'
compdef _git gst=git-status

gdv() { git diff -w "$@" | view - }
compdef _git gdv=git-diff

alias gc='git commit -v'
compdef _git gc=git-commit
alias gc!='git commit -v --amend'
compdef _git gc!=git-commit
alias gca='git commit -v -a'
compdef _git gc=git-commit
alias gca!='git commit -v -a --amend'
compdef _git gca!=git-commit
alias gcm='git commit -m'
compdef _git gcm=git-commit
alias gco='git checkout'
compdef _git gco=git-checkout

alias gr='git remote'
compdef _git gr=git-remote
alias grv='git remote -v'
compdef _git grv=git-remote
alias grmv='git remote rename'
compdef _git grmv=git-remote
alias grrm='git remote remove'
compdef _git grrm=git-remote
alias grset='git remote set-url'
compdef _git grset=git-remote
alias grup='git remote update'
compdef _git grset=git-remote
alias grbi='git rebase -i'
compdef _git grbi=git-rebase
alias grbc='git rebase --continue'
compdef _git grbc=git-rebase
alias grba='git rebase --abort'
compdef _git grba=git-rebase
alias gb='git branch'
compdef _git gb=git-branch

alias gba='git branch -a -v'
compdef _git gba=git-branch

alias gcount='git shortlog -sn'
compdef gcount=git
alias gcl='git config --list'
alias gcp='git cherry-pick'
compdef _git gcp=git-cherry-pick
alias glg='git log --stat'
compdef _git glg=git-log
alias glgg='git log --graph --max-count=10'
compdef _git glgg=git-log
alias glgga='git log --graph --decorate --all'
compdef _git glgga=git-log
alias glo='git log'
compdef _git glo=git-log
alias gls='git log --oneline'
compdef _git glg=git-log
alias gss='git status -s'
compdef _git gss=git-status

alias ga='git add'
compdef _git ga=git-add

# alias grh='git reset HEAD'
alias grh='git reset --hard'
alias grhh='git reset --hard HEAD'

# git unstage
alias gu='git reset HEAD'
# git unstage all
alias gua='git rm --cached'

# git undo workingtree file
alias gud='git checkout --'

# git revert
alias grv='git revert'
# git rollback
alias grb='git revert --no-commit'

alias gg='git log --graph'
compdef _git gg=git-log

alias gga='git log --graph --all --not refs/notes/build'
compdef _git gga=git-log

alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'

alias gsts='git stash show --text'
alias gsta='git stash'
alias gstp='git stash pop'
alias gstd='git stash drop'

# Will cd into the top of the current repository
# or submodule.
alias grt='cd $(git rev-parse --show-toplevel || echo ".")'

alias ggb='git log --show-notes=build --format=buildnotes'
compdef _git ggb=git-log

alias gt='git tag'
alias gtl='git tag -l'
alias gta='git tag -a'

alias git='nocorrect noglob git'

#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

function current_repository() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo $(git remote -v | cut -d':' -f 2)
}

# these aliases take advantage of the previous function
alias ggpull='git pull origin $(current_branch)'
compdef ggpull=git

alias ggpur='git pull --rebase origin $(current_branch)'
compdef ggpur=git

alias ggpush='git push origin $(current_branch)'
compdef ggpush=git

alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
compdef ggpnp=git

alias gph='git push heroku $(current_branch)'
alias glh='git pull heroku $(current_branch)'

# Pretty log messages
function _git_log_prettily(){
  if ! [ -z $1 ]; then
    git log --pretty=$1
  fi
}
alias glp="_git_log_prettily"
compdef _git glp=git-log

# Work In Progress (wip)
# These features allow to pause a branch development and switch to another one (wip)
# When you want to go back to work, just unwip it
#
# This function return a warning if the current branch is a wip
function work_in_progress() {
  if $(git log -n 1 2>/dev/null | grep -q -c wip); then
    echo "WIP!!"
  fi
}
# these alias commit and uncomit wip branches
alias gwip='git add -A; git ls-files --deleted -z | xargs -0 git rm; git commit -m "wip"'
alias gunwip='git log -n 1 | grep -q -c wip && git reset HEAD~1'

# these alias ignore changes to file
alias gignore='git update-index --assume-unchanged'
alias gunignore='git update-index --no-assume-unchanged'
# list temporarily ignored files
alias gignored='git ls-files -v | grep "^[[:lower:]]"'
