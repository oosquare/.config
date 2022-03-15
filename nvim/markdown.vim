" Open preview
map zo :CocCommand markdown-preview-enhanced.openPreview<CR>
" Latex formula
map zi a<Space>$$<Space><%%><Esc>2F$a
map zd o<CR>$$<CR>$$<CR><CR><%%><Esc>2iO
" Picture
map zp o![](<%%>) <%%><Esc>F[a
"Link
map zl a<Space>[](<%%>) <%%><Esc>F[a
" Jump to placeholder
map zf /<%%><CR>:noh<CR>c4l
