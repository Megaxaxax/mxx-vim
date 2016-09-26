" Подсветка ограничения длины строки в 80 символов.
set colorcolumn=81
highlight ColorColumn ctermbg=darkgray

augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

set noswapfile
set nobackup
set hlsearch

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
set nowrap
set number
syntax on
set laststatus=2 " show status line
set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%]
filetype plugin on " needed for AutoFenc
set guifont=Droid\ Sans\ Mono\ 10
set cscoperelative

" Enable OmniCompletion
" http://vim.wikia.com/wiki/Omni_completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Configure menu behavior
" http://vim.wikia.com/wiki/VimTip1386
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Use Ctrl+Space for omni-completion
" http://stackoverflow.com/questions/510503/ctrlspace-for-omni-and-keyword-completion-in-vim
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
  \ "\<lt>C-n>" :
  \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
  \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
  \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

" Enable global scope search
let OmniCpp_GlobalScopeSearch = 1
" Show function parameters
let OmniCpp_ShowPrototypeInAbbr = 1
" Show access information in pop-up menu
let OmniCpp_ShowAccess = 1
" Auto complete after '.'
let OmniCpp_MayCompleteDot = 1
" Auto complete after '->'
let OmniCpp_MayCompleteArrow = 1
" Auto complete after '::'
let OmniCpp_MayCompleteScope = 0
" Don't select first item in pop-up menu
let OmniCpp_SelectFirstItem = 0

" Tagbar
nmap <F8> :TagbarToggle<CR>