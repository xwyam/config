
set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).

set background=dark
                    " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.

set backspace=indent,eol,start
                    " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.

"set completeopt=menu,preview,longest

"set cursorline      " High light the line where the cursor is.

"set cursorcolumn    " High light the column where the cursor is.

set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.

set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1,gbk
                    " 多字节字符支持，中文用户请启用这一行：

set fileformat=unix " The format of the the of line.

" set foldcolumn=4

" set foldmethod=syntax

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

set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.

set ignorecase      " Ignore case in search patterns.

set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.

set laststatus=2    " set status bar
                    " 0     always hide
                    " 1     display when it is multi-windows
                    " 2     always display

"set mouse=a         " Enable the use of the mouse.

set nocompatible    " For Vundle

set noerrorbells    " Disable the error bell alert

set nofoldenable    " code folden

set noshowmode      " Not show input mode

set noswapfile      " No swap file

set number          " Show line numbers.

set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.

set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.

set showcmd         " Show (partial) command in status line.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.

set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.

set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.

set t_Co=256        " colorful vim

set tabstop=4       " Number of spaces that a <Tab> in the file counts for.

set textwidth=65536 " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.

syntax on
