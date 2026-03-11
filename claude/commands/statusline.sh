#!/bin/sh
# Claude Code status line — styled after robbyrussell Oh My Zsh theme

input=$(cat)

cwd=$(echo "$input" | jq -r '.workspace.current_dir // .cwd // ""')
dir=$(basename "$cwd")
model=$(echo "$input" | jq -r '.model.display_name // ""')
used=$(echo "$input" | jq -r '.context_window.used_percentage // empty')

# ANSI colors (matching robbyrussell palette)
cyan="\033[36m"
red="\033[31m"
blue="\033[34m"
yellow="\033[33m"
bold="\033[1m"
reset="\033[0m"

# Current directory (cyan, like robbyrussell %c)
dir_part="${bold}${cyan}${dir}${reset}"

# Git branch info (blue/red, like robbyrussell git_prompt_info)
git_part=""
if git_branch=$(git -C "$cwd" symbolic-ref --short HEAD 2>/dev/null); then
  if git -C "$cwd" --no-optional-locks status --porcelain 2>/dev/null | grep -q .; then
    git_part=" ${bold}${blue}git:(${reset}${red}${git_branch}${bold}${blue})${reset} ${yellow}✗${reset}"
  else
    git_part=" ${bold}${blue}git:(${reset}${red}${git_branch}${bold}${blue})${reset}"
  fi
fi

# Model name
model_part=""
if [ -n "$model" ]; then
  model_part=" ${bold}${blue}[${reset}${model}${bold}${blue}]${reset}"
fi

# Context usage
context_part=""
if [ -n "$used" ]; then
  context_part=" ${yellow}ctx:${used}%${reset}"
fi

printf "${dir_part}${git_part}${model_part}${context_part}\n"
