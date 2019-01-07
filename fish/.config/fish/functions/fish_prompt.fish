# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

function fish_prompt --description 'Write out the prompt'
	#Save the return status of the previous command
    set stat $status

    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    if not set -q __fish_color_blue
        set -g __fish_color_blue (set_color -o blue)
    end

    #Set the color for the status depending on the value
    set __fish_color_status (set_color -o green)
    if test $stat -gt 0
        set __fish_color_status (set_color -o red)
    end

    set -g __fish_user_char '$'
    if [ "$USER" = "root" ]
        set -g __fish_user_char '#'
    end

    if not set -q __fish_prompt_cwd
        set -g __fish_prompt_cwd (set_color $fish_color_cwd)
    end

    set __fish_git (__fish_git_prompt)

    printf '%s[%s] %s%s@%s%s:%s%s%s%s\f\r%s ' "$__fish_color_status" "$stat" "$__fish_color_blue" $USER (prompt_hostname)  "$__fish_prompt_normal" "$__fish_prompt_cwd" "$PWD" "$__fish_prompt_normal" "$__fish_git" "$__fish_user_char"

end
