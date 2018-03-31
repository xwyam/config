
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'mbbill/fencview'

call vundle#end()
filetype plugin indent on


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


