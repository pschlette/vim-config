" Start up pathogen
execute pathogen#infect()

" You just always do this. It has to do w/ vi compatability maybe
set nocompatible

" Turn on syntax highlighting
syntax on

" Show what's happening in the bottom right corner
set showcmd

" Use space as leader key
map <Space> <Leader>
" I write and quit a lot, so aliases that don't require an <Enter> are nice
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" Enter 'jj' in insert mode to return to normal mode
inoremap jj <ESC>

" Ctrl+j and Ctrl+k for longer vertical hops
nnoremap <C-k> 5k
vnoremap <C-k> 5k
nnoremap <C-j> 5j
vnoremap <C-j> 5j

" I like desert
color jellybeans

" Allow hidden buffers
set hidden

" Always show tab listing, even if only 1 tab is open
set showtabline=2
" Ctrl-n and Ctrl-p to move to next and previous tab
nnoremap <C-n> :tabn<CR>
nnoremap <C-p> :tabp<CR>

" Highlight search results
set hlsearch
nnoremap <C-h> :noh<CR>

" Line numbers
set number

" Highlight the line the cursor is on
set cursorline

" Show row & column in statusbar
set ruler
" Sad.
set colorcolumn=101

" Set location for backup and swap files, respectively
set backupdir=./.backup,/tmp//,.
set directory=./.backup,/tmp//,.

" Lots of stuff for indents and text width
set tabstop=4
set shiftwidth=4
set nowrap
set textwidth=150
set formatoptions=tcq
set ai
set copyindent
set smarttab
set expandtab

" Get menu for autocompletes like :find
set wildmenu

" Don't look into node_modules - there's a zillion files in there and I (usually) don't care about any of them
set wildignore+=*/node_modules/*

" Allow backspacing over all kinds of stuff
set backspace=indent,eol,start

" Add a small scroll-off value so there's always a few lines above & below the cursor
set scrolloff=4

" open splits below or to the right of the current window - the default top/left is weird
set splitbelow
set splitright

" Path is directory of current file, working directory, and recursive search from working directory
set path=.,,**

" Hm
filetype on
filetype plugin on
filetype indent on

" Language-specific 
autocmd FileType html,ruby,eruby,css,scss setlocal sw=2 ts=2 tw=0
autocmd FileType javascript,javascript.jsx setlocal sw=2 ts=2 tw=100

" Automatic text wrapping at col 80 for git commits
autocmd FileType gitcommit setlocal tw=80 colorcolumn=81

" ctrlp plugin configuration
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_root_markers = ['package.json']
" ignore gitignored files
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']



" configure neomake to use local eslint
autocmd! BufWritePost * Neomake
let g:neomake_javascript_eslint_maker = {
    \ 'exe': 'node_modules/.bin/eslint',
    \ 'args': ['-f', 'compact'],
    \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
    \ '%W%f: line %l\, col %c\, Warning - %m'
    \ }
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_warning_sign = {
  \ 'text': 'W',
  \ 'texthl': 'WarningMsg',
  \ }
let g:neomake_error_sign = {
  \ 'text': 'E',
  \ 'texthl': 'ErrorMsg',
  \ }

" jump to next error in location list with <Leader> e
nnoremap <Leader>e :lnext<CR>

set cole=1
let g:javascript_conceal_function="ƒ"

" vim-json syntax config
" don't conceal quotes, I'm just not into that
let g:vim_json_syntax_conceal = 0

" just for react
abbr ptarray PropTypes.array
abbr ptarrayr PropTypes.array.isRequired
abbr ptbool PropTypes.bool
abbr ptboolr PropTypes.bool.isRequired
abbr ptfunc PropTypes.func
abbr ptfuncr PropTypes.func.isRequired
abbr ptnumber PropTypes.number
abbr ptnumberr PropTypes.number.isRequired
abbr ptshape PropTypes.shape
abbr ptshaper PropTypes.shape.isRequired
abbr ptstring PropTypes.string
abbr ptstringr PropTypes.string.isRequired
