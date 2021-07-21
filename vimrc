set nocompatible
let mapleader = ","
nmap <leader>w :up<cr>

set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters
set autowrite                   " Automatically save before :next, :make etc.
set autoread                    " Automatically reread changed files without asking me anything

set autoindent
set showmatch
set showcmd
set showmode
set ruler
set smarttab

set tabstop=4
set shiftwidth=4
set expandtab

set noswapfile
set incsearch
set hlsearch
set shiftround

nnoremap <space> zz
imap jk <ESC>l
imap jj <ESC>l
nnoremap n nzzzv
nnoremap N Nzzzv

" strip all whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
"
" Remove search highlight
nnoremap <leader><space> :nohlsearch<CR>

"quickfix:
map <C-n> :cn<CR>
map <C-m> :cp<CR>
" Close quickfix easily
nnoremap <leader>o :copen<CR>
nnoremap <leader>a :cclose<CR>


noremap <Leader>y "+y
noremap <Leader>p "+p

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \	exe "normal! g`\"" |
      \ endif
