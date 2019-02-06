# = Generic ====================================================================
set EDITOR vim
set NODE_ENV development
set -gx PATH $PATH ~/.scripts ~/.vendor/bin ./node_modules/.bin ~/.fzf/bin
if test -d "$HOME/Projects/binary-repository/bin"
    set -gx PATH $PATH ~/Projects/binary-repository/bin
end
set TIME_STYLE long-iso

alias todo="todo-txt -d ~/.config/todo.txt/todo.cfg"
alias tnew='tmux -f ~/.tmux.conf new-session -As (basename $PWD | sed "sJ[^[:alnum:]]J_Jg")'
alias tres='tmux attach-session -t (tmux list-sessions | fzf | sed '"'"'s/\:.*//'"'"')'

# = Fundle =====================================================================
fundle plugin 'edc/bass'
fundle init

# = NVM ========================================================================
bass source ~/.nvm/nvm.sh

# = Python VirtualEnv ==========================================================
bass source ~/.python-default-virtualenv/bin/activate ^ /dev/null

# = Cargo
bass source ~/.cargo/env

# = Base16 Shell ===============================================================
if status --is-interactive
    set BASE16_SHELL "$HOME/.vendor/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

# = FZF ========================================================================
set -x FZF_DEFAULT_COMMAND 'rg --files'
set -x FZF_DEFAULT_OPTS_INNER '[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (highlight -O ansi -l {} || coderay {} || rougify {} ||   cat {}) 2> /dev/null | head -500'
set -x FZF_DEFAULT_OPTS "--preview '$FZF_DEFAULT_OPTS_INNER'"



