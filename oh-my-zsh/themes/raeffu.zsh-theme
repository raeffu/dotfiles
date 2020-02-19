local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%{$fg_bold[magenta]%}%c \
$(git_prompt_info)\
$(git_remote_status)%{$reset_color%}\
%{$fg_bold[yellow]%}%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='%{$fg_bold[magenta]%}%~%{$reset_color%} ${return_code} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}:: %{$fg_bold[cyan]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="]"
ZSH_THEME_GIT_PROMPT_DIRTY="]%{$fg[red]%} ʘ%{$fg_bold[cyan]%}"

ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg[green]%}↑ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg[red]%}↓ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg[green]%}↑%{$fg[red]%}↓ %{$reset_color%}"
