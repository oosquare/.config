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

" Folding
set foldlevelstart=99

" IM switching (fcitx5 only)
let g:input_toggle = 0
function! Fcitx5_to_en()
   let s:input_status = system("fcitx5-remote")
   if s:input_status == 2
      let g:input_toggle = 1
      let l:a = system("fcitx5-remote -c")
   endif
endfunction

function! Fcitx5_to_zh()
   let s:input_status = system("fcitx5-remote")
   if s:input_status != 2 && g:input_toggle == 1
      let l:a = system("fcitx5-remote -o")
      let g:input_toggle = 0
   endif
endfunction

set timeoutlen=150
autocmd InsertLeave * call Fcitx5_to_en()
autocmd InsertEnter * call Fcitx5_to_zh()
