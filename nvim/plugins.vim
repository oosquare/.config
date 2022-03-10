" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'

" Color schemes
Plug 'tomasr/molokai'
Plug 'sickill/vim-monokai'

" FZF support
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

" ===
" === FZF settings
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

map gf :Files<CR>
map gs :RG<CR>
