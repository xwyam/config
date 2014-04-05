
" .vimrc
" See: http://vimdoc.sourceforge.net/htmldoc/options.html for details


""""""""""""""""""""""""""""""""
"             Set              "
""""""""""""""""""""""""""""""""
set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1,gbk
                    " 多字节字符支持，中文用户请启用这一行：

set fileformat=unix " The format of the the of line.

set tabstop=2       " Number of spaces that a <Tab> in the file counts for.
 
set shiftwidth=2    " Number of spaces to use for each step of (auto)indent.
 
set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.
 
set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.
 
set showcmd         " Show (partial) command in status line.

set number          " Show line numbers.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.
 
set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.
 
set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.
 
set ignorecase      " Ignore case in search patterns.
 
set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.
 
set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.
 
set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).
 
set textwidth=65536 " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.
 
set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode. 
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)
 
set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.
 
set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.
 
set mouse=a         " Enable the use of the mouse.

"set cursorline      " High light the line where the cursor is.

set t_Co=256        " colorful vim

set laststatus=2    " set status bar
                    " 0     always hide
                    " 1     display when it is multi-windows
                    " 2     always display

"set foldenable      " code folden
"set foldmethod=indent
"set foldcolumn=4


set noerrorbells    " Disable the error bell alert

set noshowmode      " NO Show input mode

set noswapfile      " No swap file

set completeopt=menu,preview,longest




""""""""""""""""""""""""""""""""
"             CMD              "
""""""""""""""""""""""""""""""""
filetype plugin indent on
syntax on




""""""""""""""""""""""""""""""""
"             Map              "
""""""""""""""""""""""""""""""""

" Add Space after block
map fd i <esc>ll

" Remove the space appear in line tail.
map zS :%s/\s*$//g<cr>:noh<cr>
map zC :%s/\([,;]\)\ *\([^\s]\)/\1\ \2/g<cr>:noh<cr>
map zN :%s/\([0-9a-zA-Z_]\)\([%^&*\-=+\|<>]\{1}=\?\)\([0-9a-zA-Z\-~*&$@_]\)/\1\ \2\ \3/g<cr>

" For buffers
map bn :bnext<cr>
map bp :bprevious<cr>

" For TagList
map tl :TlistToggle<cr>

" For NERDTree
map ft :NERDTreeToggle<cr>

" For Fenc View
map ze :FencView<cr>

" For easymotion
map zf \\w
map zF \\b

" For A
map zh :AS<cr>
map zv :AV<cr>




""""""""""""""""""""""""""""""""
"           Plugins            "
""""""""""""""""""""""""""""""""

"        Taglist
"let Tlist_Auto_Open=1
let Tlist_Auto_Update=1
let Tlist_WinWidth=25
"let Tlist_WinHeight=100
"let Tlist_Show_One_File=1
let Tlist_Use_Right_Window=1
let Tlist_Use_SingleClick=1
let Tlist_Compact_Format=1
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen=1

"        Fenc View
let g:fencview_autodetect = 1

"        Airline
let g:airline#extensions#tabline#enabled = 1




""""""""""""""""""""""""""""""""
"           Autocmd            "
""""""""""""""""""""""""""""""""

if has("autocmd")

  " Save the cursor localtion
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

endif




""""""""""""""""""""""""""""""""
"          For GVIM            "
""""""""""""""""""""""""""""""""

if has("gui_running")

  let g:isGUI = 1
  colorscheme torte
  au GUIEnter * simalt ~x
  set guifont=Lucida_Console:h12

endif

