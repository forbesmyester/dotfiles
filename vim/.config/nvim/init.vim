if &term == 'nvim'
    call plug#begin('~/.config/nvim/plugged')
else
    call plug#begin ('~/.vim/plugged')
endif

let mapleader = "s"

" Libs
Plug 'tomtom/tlib_vim'
Plug 'tpope/timl'
Plug 'MarcWeber/vim-addon-mw-utils'

" " FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" General
" Plug 'wsdjeg/FlyGrep.vim'
" Plug 'andymass/vim-tradewinds'
Plug 'moll/vim-bbye'
" Plug 'wsdjeg/FlyGrep.vim'
" Plug 'andymass/vim-tradewinds'
Plug 'yssl/QFEnter'
Plug 'gorkunov/smartpairs.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'mbbill/undotree'
Plug 'vim-scripts/YankRing.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'simeji/winresizer'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dadbod'
if &term == 'nvim'
     Plug 'kassio/neoterm'
endif
Plug 'scrooloose/syntastic'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'

Plug 'chrisbra/unicode.vim'

Plug 'wellle/targets.vim'

let g:vimwiki_key_mappings = { 'all_maps': 0, }
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
" Plug 'reedes/vim-pencil'
" Plug 'vimwiki/vimwiki'

" Colours / Style
if &term == 'nvim'
    Plug 'chriskempson/base16-vim'
    Plug 'daviesjamie/vim-base16-lightline'
    Plug 'itchyny/lightline.vim'
    " let g:lightline = {'colorscheme': 'Tomorrow_Night'}
    let g:lightline = {
        \ 'colorscheme': 'base16',
        \   'active': {
        \     'left': [ [ 'mode', 'paste' ],
        \               [ 'cocstatus' ],
        \               ['filename', 'readonly', 'modified' ] ],
        \     'right': [ [ 'posinfo' ],
        \                [ 'filetype' ],
        \                [ 'fileencoding'] ]
        \   },
        \   'component_function': {
        \     'posinfo': 'LightlinePositionInfo',
        \     'filename': 'LightlineFilename',
        \     'filetype': 'LightlineFiletype',
        \     'cocstatus': 'CocStatus',
        \     'gitbranch': 'fugitive#head',
        \     'fileformat': 'LightlineFileformat',
        \     'fileencoding': 'LightlineFileencoding',
        \   },
        \ }
        " \                [ 'fileformat', 'fileencoding'] ]

    function! LightlinePositionInfo()
        let cp = getpos(".")
        return join([winnr(), "@", cp[1], ":", cp[2]], "")
    endfunction

    function! LightlineFilename()
        let filename = winwidth(0) > 75 ? expand('%') : expand('%:t')
        return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
                \ &filetype ==# 'unite' ? unite#get_status_string() :
                \ &filetype ==# 'neoterm' ? 'NEOTERM' :
                \ expand('%:t') !=# '' ? filename : '[No Name]'
    endfunction

    " function! LightlineReadonly()
    "     return ''
    "     return &readonly && &filetype !=# 'help' ? 'RO' : ''
    " endfunction

    function! CocStatus()
        return substitute(coc#status(), '^\s*\(.\{-}\)\s*$', '\1', '')
    endfunction

    function! LightlineFileencoding()
        let e = &fileformat ==# 'unix' ? '' :
            \ &fileformat ==# 'dos' ? '/W' : '/M'
        return winwidth(0) > 85 ? &fileencoding . e : ''
    endfunction

    function! LightlineFileformat()
        " return winwidth(0) > 85 ? &fileformat : ''
        return &fileformat
    endfunction

    function! LightlineFiletype()
        return winwidth(0) > 85 ? (&filetype !=# '' ? &filetype : 'no ft' ) : ''
    endfunction

endif



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
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-lastpat'


" Javascript
Plug 'jason0x43/vim-js-indent'
" Plug 'jelera/vim-javascript-syntax' BEST
" Plug 'pangloss/vim-javascript'
" Plug 'marijnh/tern_for_vim'

" Typescript
" Plug 'Quramy/tsuquyomi'
" Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

" Tmux
Plug 'jgdavey/tslime.vim'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'mhinz/vim-tmuxify'

" Yaml
" Plug 'tarekbeker/vim-yaml-formatter'

" JSON / JSONNET
Plug 'google/vim-jsonnet'
" Plug 'elzr/vim-json'

" Clojure
" Plug 'guns/vim-clojure-static'
" Plug 'luochen1990/rainbow'
" Plug 'tpope/vim-fireplace'
" Plug 'tpope/vim-salve'
" Plug 'venantius/vim-eastwood'

" ReasonJS
" Plug 'reasonml-editor/vim-reason-plus'

" LanguageClient
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }
" let g:LanguageClient_serverCommands = {
"     \ 'javascript': ['javascript-typescript-stdio'],
"     \ 'typescript': ['javascript-typescript-stdio'],
"     \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
"     \ 'reason': ['reason-language-server/reason-language-server.exe']
"     \ }

" == LSC =============================================
" Plug 'natebosch/vim-lsc'
" let g:lsc_server_commands = {
"     \ 'javascript': './node_modules/.bin/javascript-typescript-stdio',
"     \ 'typescript': './node_modules/.bin/javascript-typescript-stdio',
"     \ 'rust': '~/.cargo/bin/rustup run stable rls',
"     \ 'reason': 'reason-language-server/reason-language-server.exe'
"     \ }
" let g:lsc_auto_map = {
"     \ 'GoToDefinition': 'gfd',
"     \ 'GoToDefinitionSplit': '<C-W>gfd',
"     \ 'FindReferences': '<C-W>gfr',
"     \ 'FindImplementations': '<C-W>gfi',
"     \ 'FindCodeActions': 'gfA',
"     \ 'Rename': 'gfR',
"     \ 'ShowHover': v:true,
"     \ 'DocumentSymbol': '<C-W>gfF',
"     \ 'WorkspaceSymbol': '<C-W>gff',
"     \ 'SignatureHelp': '<C-w>gfs',
"     \ 'Completion': 'completefunc',
"     \}
"
"     " \ 'NextReference': '<C-n>',
"     " \ 'PreviousReference': '<C-p>',
"
" nmap <C-W>gfh :LSClientShowHover<CR>
" hi lscReference  cterm=bold gui=bold
" ====================================================

" ====================================================


" deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" let g:deoplete#enable_at_startup = 1
" Rust
Plug 'rust-lang/rust.vim'

" Plug 'guns/vim-clojure-highlight'
" " Plug 'typedclojure/vim-typedclojure'
" Plug 'guns/vim-sexp'
" " Plug 'tpope/vim-sexp-mappings-for-regular-people'
" " Plug 'web-indent'

call plug#end()

let g:winresizer_start_key = '<C-w>e'

call deoplete#custom#option({
    \ 'smart_case': v:true,
    \ 'min_pattern_length': 1,
    \ 'auto_complete_delay': 200,
\ })
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

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
" set completeopt-=preview
set completeopt=menuone,preview
set shiftround
set nrformats-=octal
set smarttab
set showcmd
set hidden
set updatetime=500
set cmdheight=1
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
let g:netrw_banner = 0

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
    colorscheme base16-woodland
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


" == CoC =============================================
" set shortmess+=c
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nmap <silent> <leader>ed <Plug>(coc-definition)
nmap <silent> <leader>ey <Plug>(coc-type-definition)
nmap <silent> <leader>ei <Plug>(coc-implementation)
nmap <silent> <leader>er <Plug>(coc-references)
" nmap <silent> <leader>e= <Plug>(coc-format-selected)
" vmap <silent> <leader>e= <Plug>(coc-format-selected)
nmap <silent> <leader>ea <Plug>(coc-codeaction)
nmap <silent> <leader>ef :CocList outline<cr>
nmap <silent> <leader>eF :CocList -I symbols<cr>
nmap <silent> <leader>en <Plug>(coc-rename)
nmap <silent> <leader>eq <Plug>(coc-fix-current)
nmap <silent> <leader><CR> :call CocAction('doHover')<CR>
nmap <silent> [e <Plug>(coc-diagnostic-prev)
nmap <silent> ]e <Plug>(coc-diagnostic-next)

highlight CocHighlightText ctermfg=black ctermbg=white
autocmd CursorHold * silent call CocActionAsync('highlight')

" = vim-easy-align ================================================

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" = Tmux Clipboard  ===============================================

" let g:clipboard = {
"       \   'name': 'myClipboard',
"       \   'copy': {
"       \      '+': 'tmux load-buffer -',
"       \      '*': 'tmux load-buffer -',
"       \    },
"       \   'paste': {
"       \      '+': 'tmux save-buffer -',
"       \      '*': 'tmux save-buffer -',
"       \   },
"       \   'cache_enabled': 1,
"       \ }
" set clipboard+=unnamedplus

" = Sexp ==========================================================
let g:sexp_filetypes = ''

" = Breakindent Patch =============================================
" if exists("&breakindent")
"     set showbreak=..
"     set breakindentopt=shift:0,sbr
"     set breakindent
" endif

" = GitGutter  ====================================================
set signcolumn=yes
nmap [g :GitGutterPrevHunk<CR>
nmap ]g :GitGutterNextHunk<CR>
let g:gitgutter_realtime=1

" = NeoTerm ======================================================
nmap <C-w>t :Topen<CR>:vertical resize 10<CR><C-w>li
let g:neoterm_default_mod = "botright vertical"
" let g:neoterm_shell = "fish -l"
" let g:neoterm_repl_command = "fish -l"
" let g:neoterm_direct_open_repl = 1
" " let g:neoterm_autoscroll = 1
" let g:neoterm_use_relative_path = 1

" Changes
" let g:neoterm_autoinsert = 1
let g:neoterm_auto_repl_cmd = 0
let g:neoterm_autoscroll = 1


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
let g:airline_skip_empty_sections = 1
let g:airline_section_y = ''
let g:airline_section_z = '%{LineNoIndicator()} %5l%\ %2c'
let g:airline_section_b = ''
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
" let g:line_no_indicator_chars = ['█', '▇', '▆', '▅', '▄', '▃', '▂', '▁', ' ']
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

" = Fugitive ======================================================

autocmd BufReadPost fugitive://* set bufhidden=delete
set diffopt+=vertical

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

" = VIM Asterisk ======================================================

map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)
map g* <Plug>(asterisk-gz*)
map g# <Plug>(asterisk-gz#)"

" = Key Bindings ======================================================
map s <Nop>
set ttimeout!
nnoremap ' `
nnoremap ` '
map U <C-r>
" noremap * :let @/=expand("<cword>")<CR>:set hlsearch<CR>
nmap <silent> <leader>/ :nohlsearch<ESC>
map <leader>: :set norelativenumber<CR>
map <leader>l :
imap <Home> <esc>^i
nnoremap <F5> :UndotreeToggle<CR>
nnoremap Y y$
nmap <CR> ;
" vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
"     \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
" omap s :normal vs<CR>

let g:fzf_buffers_jump = 1
map <leader>sf :Files<CR>
map <leader>sd :Buffers<CR>
map <leader>ss :Rg<CR>
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:90%')
  \           : fzf#vim#with_preview('right:90%:hidden', '?'),
  \   <bang>0)
" autocmd BufReadPost buffergator://* set bufhidden=delete
" autocmd FileType buffergator set ma

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

" = vimwiki =======================================================

let g:vimwiki_map_prefix='<leader><leader><leader><leader>w'
let g:vimwiki_conceallevel=0
let g:vimwiki_list = [
            \{'path': '/home/fozz/Documents/Personal Wiki', 'syntax': 'markdown', 'ext': '.md'},
            \{'path': '/home/fozz/Documents/Work Wiki', 'syntax': 'markdown', 'ext': '.md'}
            \]

nmap <leader>pp :VimwikiMakeDiaryNote 1<CR>
nmap <leader>py :VimwikiMakeYesterdayDiaryNote 1<CR>
nmap <leader>pt :VimwikiMakeTomorrowDiaryNote 1<CR>
nmap <leader>pf :FZF ~/Documents/Personal\ Wiki<CR>
nmap <leader>ww :VimwikiMakeDiaryNote 2<CR>
nmap <leader>wy :VimwikiMakeYesterdayDiaryNote 2<CR>
nmap <leader>wt :VimwikiIndex 2<CR>
nmap <leader>wf :FZF ~/Documents/Work\ Wiki<CR>

" =================================================================

" autocmd FileType md set wrap|set linebreak|set nolist "|set textwidth=0|set wrapmargin=0|set formatoptions+=1

let g:rainbow_active = 1
let g:rainbow_conf =
    \{
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': 0,
	\		'clojure': {},
	\		'scheme': {},
	\	}
    \}

function! ResizeTo80()
    exec "vertical resize " . (80 + &numberwidth + 2)
endfunction
nmap <C-w>8 :call ResizeTo80()<CR>

function MakeTerminalVisibleInit()
    " Terminal should to be at least 80 with text file at least 80 for side by
    " side, otherwise we should make it full(ish) width and toggle.
    let cols = &columns
    if ((g:neoterm_default_mod == "botright vertical") && ((!exists("g:neoterm_size")) || (g:neoterm_size == "")))
        let g:neoterm_size = ((cols - 4) / 2)
        if (g:neoterm_size < 80)
            let g:neoterm_size = cols - 4
        endif
    endif
endfunction

function MakeTerminalVisibleConfig()

    let vert = input("do you want a vertical terminal? (1/0)", "")
    let g:neoterm_default_mod = "belowright"
    if (vert)
        let g:neoterm_default_mod = "botright vertical"
    endif

    call MakeTerminalVisibleInit()

    let g:neoterm_size = input("specify terminal size (number):", g:neoterm_size)

endfunction

" -1 means not visible, any number above is the actual number.
function! GetVisibleTerminalWindowNumber()
    let i = 0
    let n = bufnr('$')
    while i < n
        let i = i + 1
        if bufname(i) =~ '^term:'
            return bufwinnr(i)
        endif
    endwhile
    return -1
endfun

" This is called in ~/.prompt (!)
function! MakeTerminalVisible()
    call MakeTerminalVisibleInit()
    if GetVisibleTerminalWindowNumber() == -1
        Topen
    endif
endfun

nmap <silent> <leader>r :set opfunc=MaTMux<CR>g@
vmap <silent> <leader>r :call MaTMux(visualmode(), 1)<CR>
nmap <leader>rqs <Plug>SetTmuxVars<CR>

function! MaTMux(type, ...)
    let sel_save = &selection
    let &selection = "inclusive"
    let reg_save = @@

    if a:0  " Invoked from Visual mode, use gv command.
        silent exe "normal! gvy"
    elseif a:type == 'line'
        silent exe "normal! '[V']y"
    else
        silent exe "normal! `[v`]y"
    endif

    for line in split(@@, ",")
        call Send_to_Tmux(line . "\n")
    endfor

    let &selection = sel_save
    let @@ = reg_save
endfunction


function RunUnitTest()
    " exec 'Neomake'
    if (exists("g:pre_unit_test_command"))
        exec "silent normal " . g:pre_unit_test_command
    endif
    if (exists("g:unit_test_command"))
        " hi LineNr ctermfg=3
        " exec "T " . g:unit_test_command
        call Send_to_Tmux(g:unit_test_command . "\n")
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


nmap <leader>rqu :call SetUnitTest()<CR>
nmap <leader>rqc :call MakeTerminalVisibleConfig()<CR>
nmap <leader>rqp :call SetPreUnitTest()<CR>

" nmap <leader>r <Plug>(neoterm-repl-send)
" nmap <leader>rr <Plug>(neoterm-repl-send-line)
" nmap <leader>rc :Tkill<CR>
" nmap <C-t> :Ttoggle<CR>
autocmd BufWritePost * :call RunUnitTest()


nmap <leader>dip :'{,'} DB<CR>
nmap <leader>dd :. DB<CR>

" vmap <C-Space>r :call SendToTmux(@* . "\n")<CR>
" autocmd BufWritePost *.clj :Require

:com ToggleMenu if &go=~'m'|set go-=m|else|set go+=m|endif
set go-=m

" nnoremap <silent> n   n:call HLNext(0.1)<cr>
" nnoremap <silent> N   N:call HLNext(0.1)<cr>
nnoremap <silent> <leader>s V:'<,'>ScratchSelection<CR>:sleep 250m<CR><C-w>j

" function! HLNext (blinktime)
" 	let [bufnum, lnum, col, off] = getpos('.')
" 	let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
" 	let target_pat = '\c\%#'.@/
" 	let ring = matchadd('ErrorMsg', target_pat, 101)
" 	redraw
" 	exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
" 	call matchdelete(ring)
" 	redraw
" endfunction

function! SpaceAboveBelow(above)
    let c = col(".") - 1
    if a:above
        exec "silent normal O"
        exec "silent normal j" . c . "l"
    else
        exec "silent normal o"
        exec "silent normal k" . c . "l"
    endif
endfunction
nmap [<space> :call SpaceAboveBelow(1)<cr>
nmap ]<space> :call SpaceAboveBelow(0)<cr>
nmap ]b :bnext<cr>
nmap [b :bprev<cr>
nmap ]c :cnext<cr>
nmap [c :cprev<cr>

function! RestoreWindowLayout()

    function! RestoreWindowLayout_Closer()
        call input("Status: " . &ft . " " . expand('%'))
        if &ft == "fugitive"
            execute "close"
        endif
        if &ft == "neoterm"
            execute "close"
        endif
        if expand('%')[0:10] == "fugitive://"
            execute "close"
        endif
    endfunction


    let windows = []
    let current_win = expand('%')

    windo call add(windows, winnr()) 
    for i in windows
        bnext
        call RestoreWindowLayout_Closer()
    endfor
    for i in windows
        if expand('%') != current_win
            bnext
        endif
    endfor
    Topen

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
    " autocmd BufWinEnter,WinEnter term://* set signcolumn=no
    autocmd BufEnter term://* set signcolumn=no
endif

" = tmux-navigator =======================================================
let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_disable_when_zoomed = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" nmap <C-j> <C-w>j
" nmap <C-h> <C-w>h
" nmap <C-k> <C-w>k
" nmap <C-l> <C-w>l

" imap <C-j> <ESC><C-j>
" imap <C-h> <ESC><C-h>
" imap <C-k> <ESC><C-k>
" imap <C-l> <ESC><C-l>

" " Allow lowercase commands
" function! CommandCabbr(abbreviation, expansion)
"   execute 'cabbr ' . a:abbreviation . ' <c-r>=getcmdpos() == 1 && getcmdtype() == ":" ? "' . a:expansion . '" : "' . a:abbreviation . '"<CR>'
" endfunction
" command! -nargs=+ CommandCabbr call CommandCabbr(<f-args>)
"
" " Map `:bc` ex command to Bclose (to close buffers with multiple windows
" CommandCabbr bc Bclose

" Ignore spellcheck of words that have a capital after the first letter
fun! IgnoreCamelCaseSpell()
  syn match myXXX /\<[a-zA-Z]\+[A-Z][a-zA-Z0-9]\*\>/ contains=@NoSpell
endfun
autocmd BufRead,BufNewFile * :call IgnoreCamelCaseSpell()

hi MatchParen ctermfg=white
hi MatchParen ctermbg=18
hi MatchParan cterm=bold
highlight clear SpellBad
highlight SpellBad cterm=underline,bold
highlight clear Error
highlight Error cterm=underline,bold

" TmuxlineSnapshot! "~/.tmux.tmuxline.conf"
"
"

