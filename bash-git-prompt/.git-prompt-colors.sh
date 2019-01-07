override_git_prompt_colors() {
  VIRTUAL_ENV_DISABLE_PROMPT=1
  GIT_PROMPT_THEME_NAME="Custom"
  GIT_PROMPT_ONLY_IN_REPO=0
  GIT_PROMPT_LEADING_SPACE=0

  GIT_PROMPT_PREFIX=" [ "
  GIT_PROMPT_SUFFIX=" ] "
  GIT_PROMPT_SEPARATOR=""
  GIT_PROMPT_STAGED=" ${Red}●${ResetColor}"
  GIT_PROMPT_CONFLICTS=" ${Red}✖${ResetColor}"
  GIT_PROMPT_CHANGED=" ${Blue}✚${ResetColor}"
  GIT_PROMPT_UNTRACKED=" ${Cyan}…${ResetColor}"
  GIT_PROMPT_STASHED=" ${BoldBlue}⚑${ResetColor}"
  GIT_PROMPT_CLEAN="${BoldGreen}${ResetColor}"
  GIT_PROMPT_SYMBOLS_NO_REMOTE_TRACKING="✭"

  GIT_PROMPT_COMMAND_OK="${White}$ "
  GIT_PROMPT_COMMAND_FAIL="${Red}✘ "

  GIT_PROMPT_START_USER="${BoldGreen}\\u@\\h${ResetColor}:${Cyan}${PathShort}${ResetColor}"
  GIT_PROMPT_START_ROOT="${BoldRed}\\u@\\h${ResetColor}:${Cyan}${PathShort}${ResetColor}"
  GIT_PROMPT_END_USER="\n_LAST_COMMAND_INDICATOR_${ResetColor}"
  GIT_PROMPT_END_ROOT="$GIT_PROMPT_END_USER"
}

reload_git_prompt_colors "Custom"

