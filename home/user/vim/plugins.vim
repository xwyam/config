
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'Valloric/YouCompleteMe'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'mbbill/fencview'
call plug#end()


" Airline
let g:airline#extensions#tabline#enabled=1

" EasyMotion
map zh \\w
map zg \\b

" Fenc View
let g:fencview_autodetect=1
map zfv :FencView<cr>

" Markdonw
let g:vim_markdown_folding_disabled=1

" NERDCommenter
let g:NERDSpaceDelims=1

" NERDTree
map znt :NERDTreeToggle<cr>

" TagBar
let g:tagbar_autofocus=1
let g:tagbar_compact=1
let g:tagbar_show_linenumbers=2
map ztb :TagbarToggle<cr>

" YouCompleteMe
let g:ycm_confirm_extra_conf=0
let g:ycm_enable_diagnostic_highlighting=0
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_global_ycm_extra_conf="~/.vim/ycm_extra_conf.py"
nnoremap zjl :YcmCompleter GoToDeclaration<CR>
nnoremap zjf :YcmCompleter GoToDefinition<CR>
nnoremap zjg :YcmCompleter GoToDefinitionElseDeclaration<CR>


