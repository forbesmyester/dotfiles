# https://wiki.archlinux.org/index.php/Environment_variables#Per_user

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# To use Python VirtualEnv uncomment the following
# [ -n "$PS1" ] && source ~/.python-default-virtualenv/bin/activate

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignorespace

# append to the history file, don't overwrite it
shopt -s histappend
shopt -s direxpand

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    tmux) color_prompt=yes;;
    tmux-256color) color_prompt=yes;;
    xterm) color_prompt=yes;;
    alacritty) color_prompt=yes;;
    xterm-256color) color_prompt=yes;;
    xterm-color) color_prompt=yes;;
    rxvt-unicode-256color) color_prompt=yes;;
    screen-256color) color_prompt=yes;;
    screen) color_prompt=yes;;
    xterm-kitty) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

function __prompt_command() {
    local PS1_EXIT_STATUS="$?" 

    local GREY="\[\e[0m\]"
    local CYAN="\[\e[0;36m\]"
    local YELLOW="\[\e[0;33m\]"
    local GREEN="\[\e[0;32m\]"
    local RED="\[\e[0;31m\]"
    local BLUE="\[\e[0;34m\]"

    local PS1_USER="\u@\h"
    PS1_EXIT="${RED}[$PS1_EXIT_STATUS]"
    if [ $PS1_EXIT_STATUS -eq 0 ]; then
        PS1_EXIT="${GREEN}[$PS1_EXIT_STATUS]"
    fi

    if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
        if [ $PS1_EXIT_STATUS -eq 0 ]; then
            nvr -c 'hi LineNr ctermfg=8'
        else
            nvr -c 'hi LineNr ctermfg=1'
            nvr -c "exe 'Topen'"
        fi
    fi

    local PS1_GIT_BRANCH=''
    git status 2>/dev/null > /dev/null
    if [ "$?" -eq 0 ]; then
        local PS1_GIT_BRANCH_OUT=`git rev-parse --abbrev-ref HEAD 2>&1`
        if [ $(echo $PS1_GIT_BRANCH_OUT | grep -v ' ' | wc -l) -eq 1 ]; then
            local PS1_GIT_DIRTY=$([[ -z $(git status --porcelain) ]] || echo ">")
            local PS1_GIT_BEHIND=$([[ -z $(git status --porcelain --branch | grep '\[ahead .\]$') ]] || echo "^")
            local PS1_GIT_BRANCH="${PS1_GIT_BRANCH_OUT} ${PS1_GIT_DIRTY} ${PS1_GIT_BEHIND}"

        fi
    fi
    local PS1_PATH="$GREEN\w"
    PS1="$PS1_EXIT ${BLUE}$PS1_USER$GREY:${GREEN}$PS1_PATH ${GREY}$PS1_GIT_BRANCH \n$ "
}



if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n\$ '
    # if [ -f ~/.vendor/bash-git-prompt/gitprompt.sh ]; then
    #     # git@github.com:magicmonty/bash-git-prompt.git
    #     export __GIT_PROMPT_DIR=~/.vendor/bash-git-prompt
    #     source ~/.vendor/bash-git-prompt/gitprompt.sh
    # fi
    PROMPT_COMMAND=__prompt_command
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\n\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*|screen*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Below my customizations

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

VISUAL=kak
export VISUAL
export EDITOR=$VISUAL
export GIT_EDITOR=$EDITOR

# :node_modules/.bin:
export NODE_ENV=development

# export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# export JDK_HOME="$JAVA_HOME"
export TIME_STYLE=long-iso
export CHROMIUM_USER_SETTINGS_DIRECTORY=~/.config/chromium/
export CHROMIUM_COMMAND=chromium

# NVM
export NVM_DIR="/home/fozz/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


if [ ! -d /var/run/user/$UID/nvim ]; then
    mkdir /var/run/user/$UID/nvim
    chmod 700 /var/run/user/$UID/nvim
fi

if [ ! -d /home/fozz/.tmp ]; then
    mkdir ~/.tmp
fi

# The next line enables shell command completion for gcloud.
# if [ -f /home/fozz/.vendor/google-cloud-sdk/completion.bash.inc ]; then
#   source '/home/fozz/.vendor/google-cloud-sdk/completion.bash.inc'
# fi

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f ~/.cargo/env ] && source ~/.cargo/env
export FZF_DEFAULT_COMMAND='rg --files'
# export FZF_DEFAULT_OPTS_INNER='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (highlight -O ansi -l {} || coderay {} || rougify {} ||   cat {}) 2> /dev/null | head -500'
# export FZF_DEFAULT_OPTS="--preview '$FZF_DEFAULT_OPTS_INNER'"

# alias tnew='tmux -f ~/.tmux.conf new-session -As "$(basename $PWD | sed "sJ[^[:alnum:]]J_Jg")"'
# alias tres='tmux attach-session -t $(tmux list-sessions | fzf | sed '"'"'s/\:.*//'"'"')'

# export NAVI_PATH="$HOME/.config/navi" #/:$HOME/.local/navi/cheats/"
# source <(~/.local/bin/navi widget bash)



# if ! infocmp alacritty > /dev/null 2>&1; then
#     ALACRITTY_TERMINFO_TMP=$(mktemp)
#     curl https://raw.githubusercontent.com/alacritty/alacritty/master/extra/alacritty.info > "$ALACRITTY_TERMINFO_TMP"
#     mkdir -p ~/.terminfo
#     tic -o ~/.terminfo/ -xe alacritty,alacritty-direct "$ALACRITTY_TERMINFO_TMP"
#     echo "NOTICE: alacritty terminfo install$HOMEd"
# fi

. ~/.bash_env

# [ -s "/home/fozz/.jabba/jabba.sh" ] && source "/home/fozz/.jabba/jabba.sh"
