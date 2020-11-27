if &term == 'nvim'
    call plug#begin('~/.config/nvim/plugged')
else
    plug#begin('~/.vim/plugged')
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
Plug 'AndrewRadev/sideways.vim'
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
" Plug 'ntpeters/vim-better-whitespace'
" Plug 'jalvesaq/vimcmdline'

Plug 'chrisbra/unicode.vim'

" Plug 'wellle/targets.vim'

" let g:vimwiki_key_mappings = { 'all_maps': 0, }
" Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
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
Plug 'coachshea/vim-textobj-markdown'


" Javascript
Plug 'jason0x43/vim-js-indent'
" Plug 'jelera/vim-javascript-syntax' BEST
" Plug 'pangloss/vim-javascript'
" Plug 'marijnh/tern_for_vim'

" Typescript
" Plug 'Quramy/tsuquyomi'
" Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

" Tmux
Plug 'forbesmyester/vim-tslime'
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
nmap <silent> <leader>eD :call CocAction("jumpDefinition", "split")<CR>
nmap <silent> <leader>ey <Plug>(coc-type-definition)
nmap <silent> <leader>ei <Plug>(coc-implementation)
nmap <silent> <leader>er <Plug>(coc-references)
" nmap <silent> <leader>e= <Plug>(coc-format-selected)
" vmap <silent> <leader>e= <Plug>(coc-format-selected)
nmap <silent> <leader>ea <Plug>(coc-codeaction)
nmap <silent> <leader>ef :CocList outline<cr>
nmap <silent> <leader>eF :CocList -I symbols<cr>
nmap <silent> <leader>en <Plug>(coc-refactor)
nmap <silent> <leader>eq <Plug>(coc-fix-current)
nmap <silent> <leader>e<CR> :call CocAction('doHover')<CR>
nmap <silent> [e <Plug>(coc-diagnostic-prev)
nmap <silent> ]e <Plug>(coc-diagnostic-next)

highlight CocHighlightText cterm=underline,bold
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
" " let g:neoterm_autoscroll = 1
" let g:neoterm_use_relative_path = 1

" Changes
let g:neoterm_autoinsert = 1
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
let g:syntastic_typescript_checkers = ["tslint"]
let g:syntastic_dosini_checkers = ["dosini"]
let g:syntastic_make_checkers = ["gnumake"]
let g:syntastic_yaml_checkers = ["pyyaml"]

" = vimwiki =======================================================

" let g:vimwiki_map_prefix='<leader><leader><leader><leader>w'
" let g:vimwiki_conceallevel=0
" let g:vimwiki_list = [
"             \{'path': '/home/fozz/Documents/Personal Wiki', 'syntax': 'markdown', 'ext': '.md'},
"             \{'path': '/home/fozz/Documents/Work Wiki', 'syntax': 'markdown', 'ext': '.md'}
"             \]
" 
" nmap <leader>pp :VimwikiMakeDiaryNote 1<CR>
" nmap <leader>py :VimwikiMakeYesterdayDiaryNote 1<CR>
" nmap <leader>pt :VimwikiMakeTomorrowDiaryNote 1<CR>
" nmap <leader>pf :FZF ~/Documents/Personal\ Wiki<CR>
" nmap <leader>ww :VimwikiMakeDiaryNote 2<CR>
" nmap <leader>wy :VimwikiMakeYesterdayDiaryNote 2<CR>
" nmap <leader>wt :VimwikiIndex 2<CR>
" nmap <leader>wf :FZF ~/Documents/Work\ Wiki<CR>

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

" function! ResizeTo80()
"     exec "vertical resize " . (80 + &numberwidth + 2)
" endfunction
" nmap <C-w>8 :call ResizeTo80()<CR>

" function MakeTerminalVisibleInit()
"     " Terminal should to be at least 80 with text file at least 80 for side by
"     " side, otherwise we should make it full(ish) width and toggle.
"     let cols = &columns
"     if ((g:neoterm_default_mod == "botright vertical") && ((!exists("g:neoterm_size")) || (g:neoterm_size == "")))
"         let g:neoterm_size = ((cols - 4) / 2)
"         if (g:neoterm_size < 80)
"             let g:neoterm_size = cols - 4
"         endif
"     endif
" endfunction

" function MakeTerminalVisibleConfig()

"     let vert = input("do you want a vertical terminal? (1/0)", "")
"     let g:neoterm_default_mod = "belowright"
"     if (vert)
"         let g:neoterm_default_mod = "botright vertical"
"     endif

"     call MakeTerminalVisibleInit()

"     let g:neoterm_size = input("specify terminal size (number):", g:neoterm_size)

" endfunction

" " -1 means not visible, any number above is the actual number.
" function! GetVisibleTerminalWindowNumber()
"     let i = 0
"     let n = bufnr('$')
"     while i < n
"         let i = i + 1
"         if bufname(i) =~ '^term:'
"             return bufwinnr(i)
"         endif
"     endwhile
"     return -1
" endfun

" " This is called in ~/.prompt (!)
" function! MakeTerminalVisible()
"     call MakeTerminalVisibleInit()
"     if GetVisibleTerminalWindowNumber() == -1
"         Topen
"     endif
" endfun

" function MaTMuxSetup()
"     if (exists("g:matmux_mark"))
"         let g:matmux_mark = input("specify mark: ", g:matmux_mark)
"     else
"         let g:matmux_mark = input("specify mark: ", "")
"     endif
"     if empty(g:matmux_mark)
"         unlet g:matmux_mark
"     endif
" endfunction


" function MaTMuxSetupIfNeeded()
"     if (exists("g:matmux_mark"))
"         if (empty("g:matmux_mark"))
"             call MaTMuxSetup()
"         endif
"     else
"         call MaTMuxSetup()
"     endif
" endfunction


" function! MaTMuxSend(text)

"     if (exists("g:matmux_mark"))
"         call MaTMuxSetupIfNeeded()
"         let n = tempname()
"         call writefile(a:text, l:n)
"         call system("cat " . shellescape(l:n) . " | i3-send-to-mark ". shellescape(g:matmux_mark) . " type")
"         call delete(l:n)
"         if (v:shell_error > 0)
"             echoerr "SWAY SEND ERROR: " . v:shell_error . "(" . a:mark . ", " . a:method . ")"
"         endif
"     else
"         call Send_to_Tmux(join(a:text, "\n"))
"     end


" endfunction

" function! GetVisualSelection()
"     " https://stackoverflow.com/a/6271254 - Public Domain
"     " Why is this not a built-in Vim script function?!
"     let [line_start, column_start] = getpos("'<")[1:2]
"     let [line_end, column_end] = getpos("'>")[1:2]
"     let lines = getline(line_start, line_end)
"     if len(lines) == 0
"         return ''
"     endif
"     let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
"     let lines[0] = lines[0][column_start - 1:]
"     return join(lines, "\n")
" endfunction


" function! MaTMuxText(type, ...)
"     let sel_save = &selection
"     let &selection = "inclusive"
"     let reg_save = @@

"     if a:0  " Invoked from Visual mode, use gv command.
"         silent exe "normal! gvy"
"     elseif a:type == 'line'
"         silent exe "normal! '[V']y"
"     else
"         silent exe "normal! `[v`]y"
"     endif

"     let the_list = []
"     for line in split(@@, "\n")
"         call add(the_list, line)
"     endfor
"     if len(the_list) > 1
"         call add(the_list, "\n")
"     endif
"     " call Send_to_Tmux(@@ . "\n")
"     for l in the_list
"     endfor
"     call MaTMuxSend(the_list)

"     let &selection = sel_save
"     let @@ = reg_save
" endfunction

" function! MaTMuxLine()
"     call MaTMuxSend([getline("."), ""])
" endfunction


" B
" C
" D

" nmap <silent> <leader>b :set opfunc=MaTMuxText<CR>g@
" nmap <silent> <leader>b<CR> :call MaTMuxSend(["\n"])<CR>
" nmap <silent> <leader>bc :call Send_Keys_to_Tmux("C-c")<CR>
" vnoremap <silent> <leader>b :call MaTMuxSend([getline(".") . "\n"])<CR>
" nmap <silent> <leader>br :call MaTMuxLine()<CR>
" nmap <leader>bst <Plug>SetTmuxVars
" nmap <leader>bsw :call MaTMuxSetup()<CR>

" ==============================================================================

function GetCursor() " Restore position with cursor()
    return [line("."), col(".")]
endfunction

function TermGetBufferId()
    let act = g:neoterm.last_active
    if act == 0
        return -1
    endif
    return g:neoterm.instances[act].buffer_id
endfunction

function TermGetLastLine(buff_id)
    let curr_winnr = winnr()
    let t_winnr = TermGetWinId(a:buff_id)
    if t_winnr > -1
        call win_gotoid(win_getid(t_winnr))
        let max = getbufinfo(a:buff_id)[0]["lnum"]
        while max >= 0
            if getline(max) != ""
                let min = max
                if max > 5
                    let min = max - 5
                else
                    let min = 1
                endif
                let prompt = getline(min, max)
                call win_gotoid(win_getid(curr_winnr))
                return [max] + prompt
            endif
            let max = max - 1
        endwhile
        call win_gotoid(win_getid(curr_winnr))
    endif
    return [-1, ""]
endfunction

function TermGetLastLineNumber(buff_id)
    return TermGetLastLine(a:buff_id)[0]
endfunction

function TermGetWinId(buff_id)
    for win in getwininfo()
        if win["bufnr"] == a:buff_id
            return win["winnr"]
        endif
    endfor
    return -1
endfunction

function TermStripEmptyEnd(lines)
    let last_non_empty = 0
    let i = 0
    for line in a:lines
        if line != ""
            let last_non_empty = i
        endif
        let i = i + 1
    endfor
    return a:lines[0:last_non_empty]
endfunction

function TermGetContent(buff_id)
    if (!exists("g:meowterm_line_before_send"))
        return []
    endif
    let line_num = g:meowterm_line_before_send[a:buff_id]
    let lines = TermStripEmptyEnd(getbufline(a:buff_id, line_num, '$'))
    if exists("g:meowterm_prompt_line_count")
        if has_key(g:meowterm_prompt_line_count, a:buff_id)
            return lines[1: len(lines) - (g:meowterm_prompt_line_count[a:buff_id][0] + 1)]
        endif
    endif
    return lines[1:]
endfunction


function TermSetPromptLinesCount(buff_id)
    let last = TermGetLastLineNumber(a:buff_id)[0]
    call NeotermSendEnter()
    sleep 250m
    let new_last = TermGetLastLine(a:buff_id)
    echo new_last
    let count = new_last[0] - last
    if (!exists("g:meowterm_prompt_line_count"))
        let g:meowterm_prompt_line_count = {}
    endif
    let g:meowterm_prompt_line_count[a:buff_id] = [count, new_last[0-count:]]
endfunction

function TermInitLineBeforeSend()
    if (!exists("g:meowterm_line_before_send"))
        let g:meowterm_line_before_send = {}
    endif
    let g:meowterm_line_before_send[TermGetBufferId()] = TermGetLastLineNumber(TermGetBufferId())
    if !has_key(g:neoterm, 'repl')
        call neoterm#repl#term(g:neoterm.last_active)
    endif
endfunction

function! NeotermSendEnter()
    call neoterm#do({ "cmd": "" })
endfunction

function! NeotermSendLine()
    call TermInitLineBeforeSend()
    let line = getline(".")
    " call neoterm#do({ "cmd": line })
    call g:neoterm.repl.exec([line])
endfunction

function! NeotermSendMotion(type, ...)
    call TermInitLineBeforeSend()
    let sel_save = &selection
    let &selection = "inclusive"
    let reg_save = @@

    if a:0
        silent exe "normal! gvy"
    elseif a:type == 'line'
        silent exe "normal! '[V']y"
    else
        silent exe "normal! `[v`]y"
    endif

    let the_list = []
    " for line in split(@@, "\n")
    "     call neoterm#do({ "cmd": line })
    " endfor
    call g:neoterm.repl.exec(split(@@, "\n"))

    let &selection = sel_save
    let @@ = reg_save
    call cursor(s:cursor_pos)
endfunction


function RunUnitTest()
    " exec 'Neomake'
    if (exists("g:pre_unit_test_command"))
        exec "silent normal " . g:pre_unit_test_command
    endif
    if (exists("b:unit_test_command"))
        call TermInitLineBeforeSend()
        hi LineNr ctermfg=3
        call g:neoterm.repl.exec([b:unit_test_command])
        " exec "T " . b:unit_test_command
        " call Send_to_Tmux(b:unit_test_command . "\n")

        " if (b:unit_test_command =~ 'key ')
        "     call MaTMuxSend(g:matmux_mark, [substitute(b:unit_test_command, '^key ', '', '') . "\n"])
        " else
        "     call MaTMuxSend([b:unit_test_command,""])
        " endif
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
    if (exists("b:unit_test_command"))
        let b:unit_test_command = input("specify command: ", b:unit_test_command)
    else
        let b:unit_test_command = input("specify command: ", "")
    endif
    if empty(b:unit_test_command)
        unlet b:unit_test_command
    endif
endfunction

function TermPasteLit()
    let c = GetCursor()
    exe "normal ]f"
    exe "normal dif"
    exe "normal k"
    call TermPaste()
    call cursor(c)
endfunction

function TermPaste()
    for line in TermGetContent(TermGetBufferId())
        exe "normal o"
        exe "normal 0"
        exe "normal i" . line
    endfor
endfunction

function RestoreCursor()
    echo s:cursor_pos
    call cursor(s:cursor_pos)
endfunction

function StoreCursor()
    let s:cursor_pos = GetCursor()
endfunction

nmap <leader>rsu :call SetUnitTest()<CR>
nmap <leader>rsp :call SetPreUnitTest()<CR>
nmap <silent> <leader>r<CR> :call NeotermSendEnter()<CR>
nmap <silent> <leader>r :call StoreCursor()<CR>:set opfunc=NeotermSendMotion<CR>g@
" :call RestoreCursor()<CR>
nmap <leader>rr :call NeotermSendLine()<CR>
" <Plug>(neoterm-repl-send-line)
nmap <leader>rc :Tkill<CR>
nmap <leader>rl :Tclear<CR>
nmap <leader>rp :call TermPaste()<CR>
nmap <leader>ro :call TermPasteLit()<CR>
vmap <leader>r :TREPLSendSelection<CR>
autocmd BufWritePost * :call RunUnitTest()
"
" nmap <leader>rsc :call MakeTerminalVisibleConfig()<CR>
" nmap <leader>r <Plug>(neoterm-repl-send)

" ==============================================================================


nmap <leader>dip :'{,'} DB<CR>
nmap <leader>dd :. DB<CR>

" vmap <C-Space>r :call SendToTmux(@* . "\n")<CR>
" autocmd BufWritePost *.clj :Require

:com ToggleMenu if &go=~'m'|set go-=m|else|set go+=m|endif
set go-=m

" nnoremap <silent> n   n:call HLNext(0.1)<cr>
" nnoremap <silent> N   N:call HLNext(0.1)<cr>
" nnoremap <silent> <leader>s V:'<,'>ScratchSelection<CR>:sleep 250m<CR><C-w>j

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

" = vimcmdline ============================================================

" let g:cmdline_map_start          = '<leader>as'
" let g:cmdline_map_send           = '<leader>a<CR>'
" let g:cmdline_map_send_and_stay  = '<leader>aa'
" let g:cmdline_map_send_motion    = '<leader>a'
" let g:cmdline_map_source_fun     = '<leader>af'
" let g:cmdline_map_send_paragraph = '<leader>ap'
" let g:cmdline_map_send_block     = '<leader>ab'
" let g:cmdline_map_quit           = '<leader>aq'
" let g:cmdline_app                = {}
" let g:cmdline_app['clojure']     = 'bash'
" let g:cmdline_term_height = 25
" let g:cmdline_term_width = 80
" 
" nnoremap <silent> <leader>a<CR> :call VimCmdLineSendCmd('')<CR>
" nmap <silent><leader>ag :call VimCmdLineFiletypeGeneric()<CR>


" = sideways.vim =========================================================
nmap ]a :SidewaysJumpRight<cr>
nmap [a :SidewaysJumpLeft<cr>
nmap <leader>ah :SidewaysLeft<cr>
nmap <leader>al :SidewaysRight<cr>

nmap <leader>ai <Plug>SidewaysArgumentInsertBefore
nmap <leader>aa <Plug>SidewaysArgumentAppendAfter
nmap <leader>aI <Plug>SidewaysArgumentInsertFirst
nmap <leader>aA <Plug>SidewaysArgumentAppendLast

omap aa <Plug>SidewaysArgumentTextobjA
xmap aa <Plug>SidewaysArgumentTextobjA
omap ia <Plug>SidewaysArgumentTextobjI
xmap ia <Plug>SidewaysArgumentTextobjI


" = tmux-navigator =======================================================
let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_disable_when_zoomed = 1
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
vmap <C-j> <ESC><C-w>j
vmap <C-h> <ESC><C-w>h
vmap <C-k> <ESC><C-w>k
vmap <C-l> <ESC><C-w>l
imap <C-j> <ESC><C-j>
imap <C-h> <ESC><C-h>
imap <C-k> <ESC><C-k>
imap <C-l> <ESC><C-l>

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

" hi MatchParen ctermfg=white
hi MatchParen ctermbg=18
hi MatchParen cterm=bold
highlight Comment cterm=italic
highlight clear SpellBad
highlight SpellBad cterm=underline
highlight clear Error
highlight Error cterm=underline
