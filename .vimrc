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
nnoremap <Leader>w :w<CR>

" Enter 'jj' in insert mode to return to normal mode
inoremap jj <ESC>

" I like desert
color desert
" color desert256
" Solarized is nice too
" set background=dark
" color solarized

" Allow hidden buffers
set hidden

" Always show tab listing, even if only 1 tab is open
set showtabline=2
" Ctrl-n and Ctrl-p to move to next and previous tab
nnoremap <C-n> :tabn<CR>
nnoremap <C-p> :tabp<CR>

" Highlight search results
set hlsearch

" Line numbers
set number

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
autocmd FileType javascript setlocal sw=4 ts=4 tw=0

" Automatic text wrapping at col 80 for git commits
autocmd FileType gitcommit setlocal tw=80

" indentLine plugin configuration
let g:indentLine_char = '|'
let g:indentLine_color_term=235

" ctrlp plugin configuration
let g:ctrlp_map = '<Leader>t'

" use eslint
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_scss_checkers = ['']

set cole=1
let g:javascript_conceal_function="ƒ"
