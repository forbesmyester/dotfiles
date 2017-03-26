# if running bash
if [ -n "$TMUX" ] && [ -n "$DISPLAY" ]; then
	TERM=screen-256color
fi

if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

alias tnew='tmux -f ~/.tmux.conf new-session -As $(basename $PWD | sed "sJ[^[:alnum:]]J_Jg")'

if [ -t 1 ]; then
    mesg n
    stty -ixon

fi

# source /home/fozz/.dvm/dvm.sh
