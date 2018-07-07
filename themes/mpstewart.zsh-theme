#!/bin/zsh
setopt prompt_subst

PROMPT='%F{green%}$USER%F{white%}`git_prompt_info`%{$reset_color%} > '
RPROMPT='${prompt_short_dir}'

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" %F{green%}✔"

chpwd () {
  git_root=$PWD
  while [[ $git_root != / && ! -e $git_root/.git ]]; do
    git_root=$git_root:h
  done
  if [[ $git_root = / ]]; then
    unset git_root
    prompt_short_dir=%~
  else
    prompt_short_dir=${PWD#$git_root/}
  fi
}
chpwd

