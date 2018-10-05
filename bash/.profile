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

# tm() {
#   [[ -n "$TMUX" ]] && change="switch-client" || change="attach-session"
#   if [ $1 ]; then 
#      tmux $change -t "$1" 2>/dev/null || (tmux new-session -d -s $1 && tmux $change -t "$1"); return
#   fi
#   session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --exit-0) &&  tmux $change -t "$session" || echo "No sessions found."
# }


if [ -t 1 ]; then
    mesg n
    stty -ixon

fi

# source /home/fozz/.dvm/dvm.sh
