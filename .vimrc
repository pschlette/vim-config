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

" Highlight search results
set hlsearch

" Line numbers
set number
" Highlight the line the cursor's on
set cursorline

" Set location for backup and swap files, respectively
set backupdir=./.backup,/tmp//,.
set directory=./.backup,/tmp//,.

" Lots of stuff for indents and text width
set tabstop=2
set shiftwidth=2
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

" Automatic text wrapping at col 80 for git commits
autocmd FileType gitcommit setlocal tw=80

" ctrlp plugin configuration
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_root_markers = ['package.json']
" ignore gitignored files
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" use eslint
let g:syntastic_javascript_checkers = ['eslint']
" use locally installed eslint (rather than global)
let g:syntastic_javascript_eslint_exe = 'node_modules/.bin/eslint'
let g:syntastic_scss_checkers = ['']
