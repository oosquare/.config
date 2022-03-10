set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" Enable mouse function
set mouse=a

" Indentation
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" List, show spaces at the end of the line
set list

" Cursor
set scrolloff=5
set guicursor=n-v-c:hor25,i-ci-ve:ver25,r-cr:hor20,o:hor50
            \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
            \,sm:block-blinkwait175-blinkoff150-blinkon175


if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Status bar
set laststatus=2
