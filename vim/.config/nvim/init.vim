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

" " FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" let g:rg_command = '
"   \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
"   \ -g "*.{js,json,php,md,styl,jade,html,config,py,cpp,c,go,hs,rb,conf}"
"   \ -g "!{.git,node_modules,vendor}/*" '

" command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)


" General
" Plug 'wsdjeg/FlyGrep.vim'
Plug 'yssl/QFEnter'
Plug 'gorkunov/smartpairs.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'mbbill/undotree'
Plug 'vim-scripts/YankRing.vim'
" Plug 'jeetsukumaran/vim-buffergator'
" Plug 'Shougo/unite.vim'
Plug 'simeji/winresizer'
" Plug 'Shougo/denite.nvim'
" Plug 'Shougo/neomru.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dotenv'
if &term == 'nvim'
     Plug 'kassio/neoterm'
    " Plug 'benekastah/neomake'
    " else
endif
Plug 'scrooloose/syntastic'
" Plug 'gabrielelana/vim-markdown'
" Plug 'junegunn/goyo.vim'
" Plug 'jtratner/vim-flavored-markdown'
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
Plug 'ntpeters/vim-better-whitespace'
Plug 'drzel/vim-line-no-indicator'

" Colours / Style
if &term == 'nvim'
    Plug 'chriskempson/base16-vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'edkolev/tmuxline.vim'
endif

" Bats - BASH unit testing!
" Plug 'bats.vim'

" CSS
Plug 'ap/vim-css-color'

" CSV
" Plug 'chrisbra/csv.vim'

" Terraform
" Plug 'hashivim/vim-terraform'

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
" Plug 'marijnh/tern_for_vim'

" Typescript
Plug 'Quramy/tsuquyomi'
" Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'

" Tmux
" Plug 'jgdavey/tslime.vim'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'mhinz/vim-tmuxify'

" Yaml
" Plug 'tarekbeker/vim-yaml-formatter'

" JSON / JSONNET
Plug 'google/vim-jsonnet'
Plug 'elzr/vim-json'

" Clojure
Plug 'guns/vim-clojure-static'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-salve'
" Plug 'vim-scripts/paredit.vim'
Plug 'venantius/vim-eastwood'

Plug 'tpope/vim-dadbod'

" Plug 'guns/vim-clojure-highlight'
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

set backupdir=~/.tmp//,/tmp// " backups (~)
set directory=~/.tmp//,/tmp// " swap files
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
    colorscheme base16-default-dark
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
set signcolumn=yes
let g:gitgutter_realtime=1
set updatetime=750

" = NeoTerm ======================================================
let g:neoterm_auto_repl_cmd = 0
let g:neoterm_shell = "bash"
" let g:neoterm_repl_command = "bash"
" let g:neoterm_direct_open_repl = 1
" let g:neoterm_autoscroll = 1
let g:neoterm_default_mod = "below"
let g:neoterm_use_relative_path = 1

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
" let g:airline_skip_empty_sections = 1
let g:airline_section_y = ''
let g:airline_section_z = '%{LineNoIndicator()} %5l%\ %2c'
let g:airline_section_b = ''
let g:line_no_indicator_chars = ['█', '▇', '▆', '▅', '▄', '▃', '▂', '▁', ' ']
"= Number Switching ================================================

function! LineNumberFlipFunc(entered)
    if a:entered
        set norelativenumber
    else
        set relativenumber
    endif
    if @% =~ '^term:'
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

" set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 12
set guioptions-=T
set guioptions-=r
set guioptions-=t
" syntax on
" let g:Powerline_symbols = 'fancy'
autocmd BufEnter * :syntax sync fromstart
autocmd BufEnter * set mouse=
autocmd FileType qf wincmd J

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
map <C-o> <PageDown>
map <C-i> <PageUp>
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

" = FZF ================================================
" let g:buffergator_viewport_split_policy = 'N'
" let g:buffergator_sort_regime = 'mru'
" let g:buffergator_display_regime = 'bufname'
" let g:buffergator_suppress_keymaps = 1
let g:fzf_buffers_jump = 1
map <C-d>f :Files<CR>
map <C-d>b :Buffers<CR>
map <C-d>s :Rg<CR>
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:90%')
  \           : fzf#vim#with_preview('right:90%:hidden', '?'),
  \   <bang>0)
" autocmd BufReadPost buffergator://* set bufhidden=delete
" autocmd FileType buffergator set ma



" = Markdown =====================================================
" function! s:auto_goyo()
"     if &ft == 'markdown' && winnr('$') == 1
"         Goyo 80
"     elseif exists('#goyo')
"         Goyo!
"     endif
" endfunction
" 
" function! s:goyo_leave()
"     if winnr('$') < 2
"         silent! :q
"     endif
" endfunction
" 
" augroup goyo_markdown
"     autocmd!
"     autocmd BufNewFile,BufRead * call s:auto_goyo()
"     autocmd! User GoyoLeave nested call s:goyo_leave()
" augroup END

au BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['javascript', 'bash']
let g:markdown_enable_folding=1
let g:markdown_enable_mappings = 0


" = NVIM Terminus ==================================================
let g:terminus_default_prompt = '$'

" = vim-json ======================================================
let g:vim_json_syntax_conceal = 0

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
" let g:syntastic_typescript_checkers = ["tsuquyomi", "tslint"]
let g:syntastic_dosini_checkers = ["dosini"]
let g:syntastic_make_checkers = ["gnumake"]
let g:syntastic_yaml_checkers = ["pyyaml"]

" let g:vim_markdown_no_default_key_mappings=1
" autocmd FileType md set wrap|set linebreak|set nolist "|set textwidth=0|set wrapmargin=0|set formatoptions+=1

let g:rainbow_active = 1
let g:rainbow_conf =
    \{
	\	'guifgs': ['brown', 'Darkblue', 'darkgray', 'darkgreen', 'darkcyan', 'darkred', 'darkmagenta', 'brown', 'darkmagenta', 'Darkblue', 'darkgreen', 'darkcyan', 'darkred', 'red'],
	\	'ctermfgs': ['brown', 'Darkblue', 'darkgray', 'darkgreen', 'darkcyan', 'darkred', 'darkmagenta', 'brown', 'darkmagenta', 'Darkblue', 'darkgreen', 'darkcyan', 'darkred', 'red'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': 0,
	\		'clojure': {},
	\		'_tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'_lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'_vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'_html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'_css': 0,
	\	}
    \}

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
    if (exists("g:pre_unit_test_command"))
        exec "silent normal " . g:pre_unit_test_command
    endif
    if (exists("g:unit_test_command"))
            exec "T " . g:unit_test_command
    endif
endfunction

function SetPreUnitTest()
    if (exists("g:pre_unit_test_command"))
        let g:pre_unit_test_command = input("specify vim command: ", g:pre_unit_test_command)
    else
        let g:pre_unit_test_command = input("specify vim command: ", "")
    endif
    if empty(g:pre_unit_test_command)
        unlet g:pre_unit_test_command
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
nmap <leader><leader><leader>r :call SetPreUnitTest()<CR>
" nmap <leader>r :vertical resize 86<CR>

if &term == 'nvim'
    nmap <leader>c :call neoterm#kill()<cr>
    vmap <leader><Enter> :TREPLSendSelection<cr>:Topen<cr>
    nmap <leader><Enter> :TREPLSendLine<cr>:Topen<cr>
    nmap <leader>m :TREPLSendFile<cr>
else
   nmap <leader>c :call Send_keys_to_Tmux("C-c")<CR>
   vmap <leader><Enter> "zy<ESC>:call SendToTmux(StripCommentBeforeTmuxPost(@z . "\n"))<CR>
   nmap <leader><Enter> <S-v>"zy:call SendToTmux(StripCommentBeforeTmuxPost(@z . ""))<CR>
   nmap <leader>%<Enter> v%<leader><CR>
   nmap <leader>m mMgg"zyG:call SendToTmux(@z . "\n\n")<CR>'M
endif

" vmap <C-Space>r :call SendToTmux(@* . "\n")<CR>
" autocmd BufWritePost *.clj :Require
autocmd BufWritePost * :call RunUnitTest()

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
    " tnoremap <ESC>: <c-\><c-n>:
    " tnoremap <ESC>/ <c-\><c-n>/
    tnoremap <c-w><ESC> <c-\><c-n>
    tnoremap <c-w>h <c-\><c-n><c-w><c-h>
    tnoremap <c-w>j <c-\><c-n><c-w><c-j>
    tnoremap <c-w>k <c-\><c-n><c-w><c-k>
    tnoremap <c-w>l <c-\><c-n><c-w><c-l>
    " tnoremap <ESC><ESC> <c-\><c-n>
    " tnoremap <leader>\ <c-\><c-n>
    tnoremap <c-h> <c-\><c-n><c-w><c-h>
    tnoremap <c-j> <c-\><c-n><c-w><c-j>
    tnoremap <c-k> <c-\><c-n><c-w><c-k>
    tnoremap <c-l> <c-\><c-n><c-w><c-l>
    autocmd BufWinEnter,WinEnter term://* set signcolumn=no
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

" TmuxlineSnapshot! "~/.tmux.tmuxline.conf"