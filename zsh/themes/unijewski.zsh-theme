function get_pwd {
  echo "${PWD/$HOME/~}"
}

local ret_status="%(?:%{$fg_bold[blue]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='${ret_status} %{$fg_bold[green]%}$(get_pwd) %{$fg_bold[red]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[red]%})"
