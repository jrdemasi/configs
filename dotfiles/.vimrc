" stuff for c++ specific capabilities

" turn on spell checking
"set spell
"set relativenumber
"set number
" sets how many lines of history VIM has to remember
set history=700
" Set to auto read when a file is changed from the outside
set autoread
"Always show current position
set ruler
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" Ignore case when searching
set ignorecase
"
" When searching try to be smart about cases 
set smartcase
"
" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" Enable syntax highlighting
syntax enable
colorscheme elflord
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions+=e
  set t_Co=256
  set guitablabel=%M\ %t
endif
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
"
" " Use Unix as the standard file type
set ffs=unix,dos,mac
" Use spaces instead of tabs
 set expandtab
"
" " Be smart when using tabs ;)
 set smarttab
"
" " 1 tab == 4 spaces
 set shiftwidth=4
 set tabstop=4

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
 map <space> /
 map <c-space> ?
" Always show the status line
set laststatus=2

set mouse-=a

