local ret_status="%(?:%{$fg_bold[green]%}✓:%{$fg_bold[red]%}✗)"
PROMPT='${ret_status} %{$fg[red]%}%c%{$reset_color%} %{$fg_bold[green]%}$ %{$reset_color%}'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
