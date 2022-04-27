" Replace hjkl with ijkl for convenience
noremap i k
noremap j h
noremap k j
noremap h i
noremap I 5k
noremap J bh
noremap K 5j
noremap L el
noremap H I

" ===
" === File Operations
" ===
map S :w<CR>
map s <nop>
map Q :q<CR>
map R :source $MYVIMRC<CR>

" ===
" === Tabs
" ===
map tn :tabe<CR>
map tj :-tabnext<CR>
map tl :+tabnext<CR>
map tt gt

" ===
" === Layout
" ===

" Create a new window
map sj :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>

" Focus on another window
map mj <C-w>h
map ml <C-w>l
map mi <C-w>k
map mk <C-w>j
map mm <C-w>w

" Resizing, ss for making all windows equally high and wide
map s<Left> :vertical resize -5<CR>
map s<Right> :vertical resize +5<CR>
map s<Up> :resize +5<CR>
map s<Down> :resize -5<CR>
map ss <C-w>=

" Change the layout, move current window to somewhere
map m<Left> <C-w>H
map m<Right> <C-w>L
map m<Up> <C-w>K
map m<Down> <C-w>J

" ===
" === Searching
" ===

" n for finding the next target, N for finding the previous one
" zz for making target in the center of current window
noremap n nzz
noremap N Nzz

" Searching option
set incsearch
set ignorecase
set smartcase
exec "nohlsearch"

" ===
" === Goto operations
" ===

" gb to go back
map gb <C-O>
