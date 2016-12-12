" set nocompatible              " be iMproved, required
" filetype off                  " required
" 
" " set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
if &term == 'nvim'
    call plug#begin('~/.config/nvim/plugged')
else
    call plug#begin('~/.vim/plugged')
endif

" Plug 'gmarik/Vundle'

" Libs
Plug 'tomtom/tlib_vim'
Plug 'Shougo/vimproc', { 'do': 'make' }
Plug 'tpope/timl'
Plug 'MarcWeber/vim-addon-mw-utils'

" General
Plug 'gorkunov/smartpairs.vim'
Plug 'mbbill/undotree'
Plug 'vim-scripts/YankRing.vim'
Plug 'jeetsukumaran/vim-buffergator'
" Plug 'Shougo/neomru.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
if &term == 'nvim'
    Plug 'kassio/neoterm'
    " Plug 'benekastah/neomake'
    " else
endif
Plug 'scrooloose/syntastic'
" Plug 'gabrielelana/vim-markdown'
Plug 'jtratner/vim-flavored-markdown'
Plug 'Soares/butane.vim' "BClose
Plug 'tmhedberg/matchit'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
" if &term == 'nvim'
"     function! DoRemote(arg)
"         UpdateRemotePlugins
"     endfunction
"     Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
"     let g:deoplete#enable_at_startup = 1
" else
if &term =~ '256color$' || has('gui_running') || &term == 'nvim'
    Plug 'Valloric/YouCompleteMe'
else
    Plug 'altercation/vim-colors-solarized.git'
endif
" endif
Plug 'junegunn/vim-easy-align'
Plug 'mtth/scratch.vim'

" Colours / Style
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

" CSS
Plug 'ap/vim-css-color'

" CSV
" Plug 'chrisbra/csv.vim'

" Terraform
Plug 'hashivim/vim-terraform'

" Jade
" Plug 'digitaltoad/vim-jade'

" Haskell
" Plug 'travitch/hasksyn'
" Plug 'dag/vim2hs'
" Plug 'eagletmt/neco-ghc'
" Plug 'lukerandall/haskellmode-vim'
" Plug 'eagletmt/ghcmod-vim'

" Indent based textobj (useful for Haskell too)
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'

" Javascript
Plug 'jason0x43/vim-js-indent'
" Plug 'jelera/vim-javascript-syntax' BEST
" Plug 'pangloss/vim-javascript'
Plug 'marijnh/tern_for_vim'

" Flow

Plug 'flowtype/vim-flow'

" Typescript
Plug 'Quramy/tsuquyomi'
" Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'

" Tmux
Plug 'jgdavey/tslime.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mhinz/vim-tmuxify'
" Plug 'benmills/vimux'

" Yaml
Plug 'stephpy/vim-yaml'

" JSONNET
Plug 'google/vim-jsonnet'

" Clojure
Plug 'guns/vim-clojure-static'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-salve'
" Plug 'vim-scripts/paredit.vim'
Plug 'venantius/vim-eastwood'

" Plug 'guns/vim-clojure-highlight'
" " Plug 'tpope/vim-fireplace'
" " Plug 'typedclojure/vim-typedclojure'
" Plug 'guns/vim-sexp'
" " Plug 'tpope/vim-sexp-mappings-for-regular-people'
" " Plug 'web-indent'

" Plug 'tmux-plugins/vim-tmux-focus-events'

call plug#end()

" call vundle#end()
" filetype plugin indent on


" if &term =~ '^screen'
"     " tmux will send xterm-style keys when its xterm-keys option is on
"     execute "set <xUp>=\e[1;*A"
"     execute "set <xDown>=\e[1;*B"
"     execute "set <xRight>=\e[1;*C"
"     execute "set <xLeft>=\e[1;*D"
" endif

" VIM Customizations
set nocompatible
set modelines=0
set encoding=utf-8
set scrolloff=5
set sidescrolloff=5
set display+=lastline
set autoindent
set complete-=i
set completeopt-=preview
set shiftround
set nrformats-=octal
set smarttab
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set wildignore=*.o,*.obj,*.bak,*.exe
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set relativenumber
set lazyredraw
set number
set hls
set timeoutlen=10000
set nofoldenable
filetype plugin on

if &encoding ==# 'latin1' && has('gui_running')
	set encoding=utf-8
endif

" set ignorecase
set smartcase
" set gdefault
set incsearch
set showmatch
set hlsearch
set linebreak
set breakat=\ 

set backupdir=/tmp,~/tmp,/storage/emulated/legacy/tmp " backups (~)
set directory=/tmp,~/tmp,/storage/emulated/legacy/tmp " swap files
" set backup               " enable backups

" Code Style
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Vimdiff
set diffopt+=iwhite

" Pathogen
" call pathogen#infect()
" call pathogen#helptags()

" Visual Style
" let z=$COLORTERM
" if &term =~ '256color$' || has('gui_running') || &term == 'nvim' || $COLORTERM =~ "."
    set t_Co=256
    set laststatus=2
    set noshowmode
    let base16colorspace=256
    set background=dark
    colorscheme base16-tomorrow-night
    if &listchars ==# 'eol:$'
        if !has('win32') && (&termencoding ==# 'utf-8' || &encoding ==# 'utf-8')
            set list
            let &listchars = "tab:\u21e5 ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u00b7"
        endif
    endif
    set cursorline
    augroup CursorLine
        autocmd!
        au insertenter * set nocursorline
        au insertleave * set cursorline
    augroup end
    let &colorcolumn="81"

" else
"     set background=dark
"     colorscheme solarized
" endif

" = vim-easy-align ================================================

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" = Sexp ==========================================================
let g:sexp_filetypes = ''

" = Breakindent Patch =============================================
if exists("&breakindent")
    set showbreak=..
    set breakindentopt=shift:0,sbr
    set breakindent
endif

" = GitGutter  ====================================================
let g:gitgutter_sign_column_always=1
let g:gitgutter_realtime=1
set updatetime=750

" = NeoTerm ======================================================
let g:neoterm_shell = "bash"
let g:neoterm_position = "vertical"

" = Airline =======================================================

if ! has('gui_running')
    set ttimeoutlen=10
    augroup fastescape
        autocmd!
        au insertenter * set timeoutlen=0
        au insertleave * set timeoutlen=1000
    augroup end
endif

let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1

" = Number Switching ================================================

function! LineNumberFlipFunc(entered)
    if a:entered
        set norelativenumber
    else
        set relativenumber
    endif
    if @% =~ '^term:'
        set relativenumber
        set nocursorline
    endif
endfunction

augroup LineNumberFlip
	autocmd!
	au insertenter * :call LineNumberFlipFunc(1)
	au insertleave * :call LineNumberFlipFunc(0)
augroup end
map <leader>: :set norelativenumber<CR>

" = Fugitive ======================================================

autocmd BufReadPost fugitive://* set bufhidden=delete
set diffopt+=vertical

" = YouCompleteMe ===================================================

let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_semantic_triggers = {'haskell,javascript,typescript' : ['.']}


"
" = GUI Visual Style ================================================

set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 12
set guioptions-=T
set guioptions-=r
set guioptions-=t
syntax on
let g:Powerline_symbols = 'fancy'
autocmd BufEnter * :syntax sync fromstart
autocmd BufEnter * set mouse=

" = Tern ==============================================================

let g:tern_show_argument_hints='on_move'
" let g:tern_map_keys=1

" = Haskell ===========================================================

" let g:haddock_browser = "/usr/bin/chromium-browser --new-window "
" let g:haddock_docdir = "/usr/share/doc/ghc-doc/html/"
" 
" " let g:ghc = "/opt/ghc/7.8.4/bin/ghc"
" 
" let g:haskell_conceal_wide = 0
" let g:haskell_conceal              = 0
" let g:haskell_conceal_enumerations = 0
" let g:hasksyn_indent_search_backward = 100
" let g:hasksyn_dedent_after_return = 1
" let g:hasksyn_dedent_after_catchall_case = 1
" 
" let g:haskell_conceal_wide  = 0
" let g:haskell_quasi         = 0
" let g:haskell_interpolation = 0
" let g:haskell_regex         = 0
" let g:haskell_jmacro        = 0
" let g:haskell_shqq          = 0
" let g:haskell_sql           = 0
" let g:haskell_json          = 0
" let g:haskell_xml           = 0
" 
" " au BufEnter *.hs compiler ghc
" 
" " = Neco-ghc  =======================================================
" let g:necoghc_enable_detailed_browse = 1

" = Key Bindings ======================================================
" let mapleader = "\<space>"
map U <C-r>
map <C-o> ]c
map <C-i> [c
nnoremap * :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
nmap <silent> <leader>/ :nohlsearch<ESC>
imap <Home> <esc>^i
nnoremap <F5> :UndotreeToggle<CR>
nnoremap Y y$
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

" Plugin: vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-A-n>'
let g:multi_cursor_prev_key='<C-n>'
let g:multi_cursor_skip_key='<C-A-m>'
let g:multi_cursor_quit_key='<Esc>'

" = Typescript =====================================================
let g:tsuquyomi_disable_default_mappings = 1
let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_disable_quickfix = 1
" set ballooneval
" autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()
autocmd FileType typescript nmap <buffer> <Leader>tt : <C-u>echo tsuquyomi#hint()<CR>
autocmd FileType typescript nmap <leader>td :TsuDefinition<CR>
autocmd FileType typescript nmap <leader>tr :TsuReferences<CR>
autocmd FileType typescript nmap <leader>tn :TsuRenameSymbolC<CR>

" = vim-buffergator ================================================
let g:buffergator_viewport_split_policy = 'D'
let g:buffergator_sort_regime = 'mru'
let g:buffergator_display_regime = 'bufname'
let g:buffergator_suppress_keymaps = 1
map <C-b> :BuffergatorOpen<CR>
autocmd BufReadPost buffergator://* set bufhidden=delete

" = Syntastic ======================================================
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=0
let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_checkers = ["eslint"]
let g:syntastic_typescript_checkers = ["tsuquyomi"]
let g:syntastic_dosini_checkers = ["dosini"]
let g:syntastic_make_checkers = ["gnumake"]
let g:syntastic_json_checkers = ["json_tool"]
let g:syntastic_yaml_checkers = ["pyyaml"]

" Plugin: gabrielelana/vim-markdown
let g:markdown_enable_folding=1
let g:markdown_enable_mappings = 0
" let g:vim_markdown_no_default_key_mappings=1
" autocmd FileType md set wrap|set linebreak|set nolist "|set textwidth=0|set wrapmargin=0|set formatoptions+=1

function SetClojureOptions()
    " Plugin: Rainbow
    let g:rainbow_active = 1

    let g:rainbow_conf = {
    \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
    \   'operators': '_,_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {},
    \       'tex': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \       },
    \       'lisp': {
    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \       },
    \       'vim': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \       },
    \       'html': {
    \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \       },
    \       'css': 0,
    \   }
    \}

    " nmap <Enter> :Eval<cr>
    " RainbowParenthesisToggle
    " au VimEnter * RainbowParenthesesToggle
    " au Syntax * RainbowParenthesesLoadRound
    " au Syntax * RainbowParenthesesLoadSquare
    " au Syntax * RainbowParenthesesLoadBraces
    " let g:paredit_leader = '\'
endfunction
autocmd Filetype clojure call SetClojureOptions()

" Vimux ===========================================================
let g:VimuxOrientation = "h"
let g:tslime_ensure_trailing_newlines = 1
let g:VimuxRunnerType = "window"

" function! TestFile_Set()
" 	let g:testfile__file_to_test = @%
" 	let g:testfile__filetype_to_test = &ft
" 	echo "Test file set to " . @%
" endfunction
" 
" function! TestFile_Run()
" 	if exists("g:testfile__file_to_test")
" 		echo "js test file: " . g:testfile__file_to_test
" 		call SendToTmux("./node_modules/.bin/test-this-file '" . g:testfile__file_to_test . "'\n")
" 	endif
" endfunction


" let curwin = winnr()
" let wins=[] 
" windo call add(wins, [winnr(), bufname('%')]) 

function RunUnitTest()
    " exec 'Neomake'
    if (exists("g:unit_test_command"))
        " if &term == 'nvim'
        "     exec "T " . g:unit_test_command
        "     exec "vertical resize 86"
        " else
            call Send_keys_to_Tmux("enter")
            call SendToTmux(g:unit_test_command . "\n")
        " endif
    endif
endfunction

function SetUnitTest()
    if (exists("g:unit_test_command"))
        let g:unit_test_command = input("specify command: ", g:unit_test_command)
    else
        let g:unit_test_command = input("specify command: ", "")
    endif
    if empty(g:unit_test_command)
        unlet g:unit_test_command
    endif
endfunction

function! StripCommentBeforeTmuxPost(s)
    return a:s
    let r = matchstr(a:s, '\w.*')
    if empty(r)
        return a:s
    endif
    return r
endfunction



" vmap <leader>r :call <ESC>SendToTmux(@* . "\n\n")<CR>


nmap <leader>r :call RunUnitTest()<CR>
nmap <leader>R <Plug>SetTmuxVars
nmap <leader><leader>r :call SetUnitTest()<CR>
" nmap <leader>r :vertical resize 86<CR>

" if &term == 'nvim'
"     nmap <leader>c :call neoterm#kill()<cr>
"     vmap <leader><Enter> :TREPLSend<cr>
"     nmap <leader><Enter> :TREPLSend<cr>
"     nmap <leader>m :TREPLSendFile<cr>
" else
    nmap <leader>c :call Send_keys_to_Tmux("C-c")<CR>
    vmap <leader><Enter> "zy<ESC>:call SendToTmux(StripCommentBeforeTmuxPost(@z . "\n\n"))<CR>
    nmap <leader><Enter> <S-v>"zy:call SendToTmux(StripCommentBeforeTmuxPost(@z . "\n\n"))<CR>
    nmap <leader>m mMgg"zyG:call SendToTmux(@z . "\n\n")<CR>'M
" endif

" vmap <C-Space>r :call SendToTmux(@* . "\n")<CR>
" autocmd BufWritePost *.clj :Require
autocmd BufWritePost * :call RunUnitTest()
au BufNewFile,BufRead *.raml set filetype=yaml

:com ToggleMenu if &go=~'m'|set go-=m|else|set go+=m|endif
set go-=m

nnoremap <silent> n   n:call HLNext(0.1)<cr>
nnoremap <silent> N   N:call HLNext(0.1)<cr>
nnoremap <silent> <leader>s V:'<,'>ScratchSelection<CR>:sleep 250m<CR><C-w>j

function! HLNext (blinktime)
	let [bufnum, lnum, col, off] = getpos('.')
	let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
	let target_pat = '\c\%#'.@/
	let ring = matchadd('ErrorMsg', target_pat, 101)
	redraw
	exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
	call matchdelete(ring)
	redraw
endfunction

function! Gpullrequest()
    let cmd = 'git diff --name-only $(git branch | grep ''^\*'' | sed ''s/^* //'') $(git merge-base $(git branch | grep ''^\*'' | sed ''s/^* //'') master) | sed ''s/$/:1:Changed File/g'' |  sed "s/^/$(git rev-parse --show-cdup |sed ''s/\//\\\//g'')/g" > ' . "/tmp/$USER.vim.cfile"
    let z = system(cmd)
    execute "cfile /tmp/" . $USER . ".vim.cfile"
endfunction


if &term == 'nvim'
    " if @% =~ '^term:'
    tnoremap <ESC>: <c-\><c-n>:
    tnoremap <ESC>/ <c-\><c-n>/
    tnoremap <ESC><ESC> <c-\><c-n>
    tnoremap <leader>\ <c-\><c-n>
    tnoremap <c-h> <c-\><c-n><c-w><c-h>
    tnoremap <c-j> <c-\><c-n><c-w><c-j>
    tnoremap <c-k> <c-\><c-n><c-w><c-k>
    tnoremap <c-l> <c-\><c-n><c-w><c-l>
    " autocmd BufWinEnter,WinEnter term://* startinsert
endif

imap <C-j> <ESC><C-j>
imap <C-h> <ESC><C-h>
imap <C-k> <ESC><C-k>
imap <C-l> <ESC><C-l>

" Allow lowercase commands
function! CommandCabbr(abbreviation, expansion)
  execute 'cabbr ' . a:abbreviation . ' <c-r>=getcmdpos() == 1 && getcmdtype() == ":" ? "' . a:expansion . '" : "' . a:abbreviation . '"<CR>'
endfunction
command! -nargs=+ CommandCabbr call CommandCabbr(<f-args>)

" Map `:bc` ex command to Bclose (to close buffers with multiple windows
CommandCabbr bc Bclose

" Ignore spellcheck of words that have a capital after the first letter
fun! IgnoreCamelCaseSpell()
  syn match myXXX /\<[a-zA-Z]\+[A-Z][a-zA-Z0-9]\*\>/ contains=@NoSpell
endfun
autocmd BufRead,BufNewFile * :call IgnoreCamelCaseSpell()

hi MatchParen ctermfg=white
hi MatchParen ctermbg=18
hi MatchParan cterm=bold
