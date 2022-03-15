" ===
" === Load Plugins
" ===
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'

" Color schemes
" Plug 'tomasr/molokai'
" Plug 'sickill/vim-monokai'
" Plug 'ayu-theme/ayu-vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" fzf.vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Markdown
Plug 'plasticboy/vim-markdown'

call plug#end()

" ===
" === fzf.vim
" ===

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files('.', fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>1)

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--layout=reverse', '--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>1)

map gp :tabe<CR>:Files<CR>
map gs :tabe<CR>:RG<CR>

" ===
" === coc.nvim
" ===

let g:coc_global_extensions = [
    \ 'coc-clangd',
    \ 'coc-webview',
    \ 'coc-markdown-preview-enhanced',
    \ 'coc-marketplace',
    \ 'coc-yaml'
    \ ]


" ===
" === Markdown
" ===

let g:vim_markdown_math = 1

