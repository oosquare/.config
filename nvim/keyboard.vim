" Direction Key
"   i
" j   l
"   k
noremap i k
noremap j h
noremap j h
noremap k j
noremap h i
noremap I 5k
noremap J 10h
noremap K 5j
noremap L 10l
noremap H I

" File operation
map S :w<CR>
map s <nop>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map <C-a> <Esc>ggVG
map <C-p> <Esc>:e 
map SQ :w<CR>:q<CR>

" Tabe 
map tn :tabe<CR>
" (jl)
map tj :-tabnext<CR>
map tl :+tabnext<CR>
" (Left,Right,Up,Down)
map t<Left> :-tabnext<CR>
map t<Right> :+tabnext<CR>

" Spliting
" Spliting (jkli)
map sj :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>
map mj <C-w>h
map ml <C-w>l
map mi <C-w>k
map mk <C-w>j
" Spliting (Left,Right,Up,Down)
map s<Left> :set nosplitright<CR>:vsplit<CR>
map s<Right> :set splitright<CR>:vsplit<CR>
map s<Up> :set nosplitbelow<CR>:split<CR>
map s<Down> :set splitbelow<CR>:split<CR>
map m<Left> <C-w>h
map m<Right> <C-w>l
map m<Up> <C-w>k
map m<Down> <C-w>j

" NERDTree
map tt :NERDTree<CR>
