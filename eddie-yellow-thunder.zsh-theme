# change your machine name
MACHINE="HOME"

function collapse_pwd {
  echo $(pwd | sed -e "s,^$HOME,~,")
}

PROMPT='%{$fg[red]%}%n %{$fg_bold[yellow]%}(@$MACHINE) ⚡%{$fg_bold[green]%}%p %{$fg[cyan]%}$(collapse_pwd) %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

RPROMPT='[%F{green}%T%f]%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
