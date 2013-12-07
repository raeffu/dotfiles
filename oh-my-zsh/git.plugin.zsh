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

alias gca='git commit -v -a'
compdef _git gca=git-commit

alias gco='git checkout'
compdef _git gco=git-checkout

alias gcm='git checkout master'

alias gb='git branch'
compdef _git gb=git-branch

alias gba='git branch -a -v'
compdef _git gba=git-branch

alias gcount='git shortlog -sn'

alias gcp='git cherry-pick'
compdef _git gcp=git-cherry-pick

alias glg='git log --stat'
compdef _git glg=git-log

alias gls='git log --oneline'
compdef _git glg=git-log

alias gss='git status -s'
compdef _git gss=git-status

alias ga='git add'
compdef _git ga=git-add

alias gm='git merge'
compdef _git gm=git-merge
# alias grh='git reset HEAD'
# alias grhh='git reset HEAD --hard'
alias grh='git reset --hard HEAD'
# git unstage
alias gu='git reset HEAD'
alias gun='git rm --cached'

# git undo workingtree file
alias gud='git checkout --'

# git revert
alias grv='git revert'
alias grb='git revert --no-commit'

alias gg='git log --graph'
compdef _git gg=git-log

alias gga='git log --graph --all --not refs/notes/build'
compdef _git gga=git-log

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
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo ${ref#refs/heads/}
}

function current_repository() {

    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo $(git remote -v | cut -d':' -f 2)
}

# these aliases take advantage of the previous function
alias ggpull='git pull origin $(current_branch)'
compdef ggpull=git

alias ggpush='git push origin $(current_branch)'
compdef ggpush=git

alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
compdef ggpnp=git

alias gph='git push heroku $(current_branch)'
alias glh='git pull heroku $(current_branch)'
