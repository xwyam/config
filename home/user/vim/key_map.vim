
imap <Nul> <Space>

" Add Space after block
map fd i <esc>ll

" Remove the space appear in line tail.
map <F2> :%s/\s*$//g<cr>:noh<cr>

" Run command
map zm :!

" buffers
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-x> :bdelete<cr>
map zbn :bnext<cr>
map zbp :bprevious<cr>
map zbc :ball<cr>
map zbh <C-w><
map zbj <C-w>-
map zbk <C-w>+
map zbl <C-w>>

