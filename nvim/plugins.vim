" ===
" === Load Plugins
" ===
call plug#begin('~/.config/nvim/plugged')

" Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Brackets Pairing
Plug 'jiangmiao/auto-pairs'

" Color schemes
" Plug 'tomasr/molokai'
" Plug 'sickill/vim-monokai'
" Plug 'ayu-theme/ayu-vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" coc.nvim
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Markdown
Plug 'plasticboy/vim-markdown'

" Comments
Plug 'tpope/vim-commentary'

" Indent Line
Plug 'Yggdroot/indentLine'

call plug#end()

" ===
" === coc.nvim
" ===

let g:coc_global_extensions = [
    \ 'coc-clangd',
    \ 'coc-webview',
    \ 'coc-markdown-preview-enhanced',
    \ 'coc-marketplace',
    \ 'coc-yaml',
    \ 'coc-lists'
    \ ]

source ~/.config/nvim/coc-setting.vim

" ===
" === vim-markdown
" ===

let g:vim_markdown_math = 1


" ===
" === vim-commentary
" ===

autocmd FileType python,shell set commentstring=#\ %s
autocmd FileType java,c,cpp set commentstring=//\ %s


" ===
" === indentLine
" ===

let g:indentLine_char = '│'
