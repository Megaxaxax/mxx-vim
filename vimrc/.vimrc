set number
set relativenumber
" После добавления данных строк,
" переключение раскладки осуществляется через CTRL-^, в режиме вставки
" Эти строки необходимы, поскольку vim не работает с utf-8
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
" Решение проблемы с буквой ё
" Включение/выключение spell через :set spell, :set nospell
set spelllang=ru_yo,en_us

set showbreak=.. "line break is .. now
set linebreak " word wrap
set showmode " show --INSERT--, --NORMAL---, etc. on last line of vim
let &runtimepath .= ',/home/creative/.vim/after'
set autochdir " auto change directory to current file
set wildmenu " при вводе команды через ':' и нажатии <tab> появляется окно из которого можно просмотреть список вариантов команды

set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set scrolloff=5 " при достижении границ экрана текст всегда пролистывается заранее за 5 строк

set backspace=indent,eol,start " make backspace work like most other apps
set is " interactive search
set autoindent " enable auto indent
set smartindent " make indent in new block
set wrap
set number
syntax on
set laststatus=2 " show status line
set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%]
filetype plugin on " needed for AutoFenc
colorscheme darkblue
set guifont=Ubuntu\ Mono\ 12
