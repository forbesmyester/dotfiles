eval %sh{kak-lsp --kakoune -s $kak_session}
hook global WinSetOption filetype=(rust) %{
        lsp-enable-window
}

source "%val{config}/plugins/plug.kak/rc/plug.kak"

hook global WinCreate ^[^*]+$ %{ add-highlighter window/ number-lines -hlcursor }

# map -docstring "Enter LSP mode" global goto l '\: enter-user-mode lsp<ret>'

plug "andreyorst/smarttab.kak" defer smarttab %{
    # when `backspace' is pressed, 4 spaces are deleted at once
    set-option global softtabstop 4
} config %{
    # these languages will use `expandtab' behavior
    hook global WinSetOption filetype=(rust|markdown|kak|lisp|scheme|sh|perl|typescript|scala) expandtab
    # these languages will use `noexpandtab' behavior
    hook global WinSetOption filetype=(makefile|gas) noexpandtab
    # these languages will use `smarttab' behavior
    hook global WinSetOption filetype=(c|cpp) smarttab
}

plug "andreyorst/powerline.kak" config %{
    powerline-start
}

plug "andreyorst/fzf.kak"
     
# evaluate-commands %sh{
#     case $(uname) in
#         Linux) copy="xclip -selection clipboard -i"; paste="xclip -selection clipboard -o" ;;
#         Darwin)  copy="pbcopy"; paste="pbpaste" ;;
#     esac
# 
#     printf "map global user -docstring 'paste (after) from clipboard' p '!%s<ret>'\n" "$paste"
#     printf "map global user -docstring 'paste (before) from clipboard' P '<a-!>%s<ret>'\n" "$paste"
#     printf "map global user -docstring 'yank to clipboard' y '<a-|>%s<ret>:echo -markup %%{{Information}copied selection to X11 clipboard}<ret>'\n" "$copy"
#     printf "map global user -docstring 'replace from clipboard' R '|%s<ret>'\n" "$paste"
# }
