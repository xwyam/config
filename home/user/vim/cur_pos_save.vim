
if has("autocmd")

  " Register new file type
  autocmd BufNewFile,BufRead *.md,*.mkd set filetype=markdown

  " Special setting for different type files
  autocmd FileType python,mkd set tabstop=4 shiftwidth=4

  " Save the cursor localtion
  autocmd BufReadPost *
    \ if line( "'\"" ) > 1 && line( "'\"" ) <= line( "$" ) |
    \   exe "normal! g`\"" |
    \ endif

  " Load vim setting file in current directory
  autocmd BufReadPost *
    \ if filereadable( "rc.vim" ) |
    \   source ./rc.vim |
    \ endif

endif

