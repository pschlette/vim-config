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

" Allow hidden buffers
set hidden

" Always show tab listing, even if only 1 tab is open
set showtabline=2
" Ctrl-n and Ctrl-p to move to next and previous tab
nnoremap <C-n> :tabn<CR>
nnoremap <C-p> :tabp<CR>

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

" Get menu for autocompletes like :find
set wildmenu

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
autocmd FileType html setlocal sw=2 ts=2
autocmd FileType ruby setlocal expandtab sw=2 ts=2 tw=0
autocmd FileType javascript setlocal expandtab sw=4 ts=4 tw=0

" indentLine plugin configuration
let g:indentLine_char = '|'
let g:indentLine_color_term=235
