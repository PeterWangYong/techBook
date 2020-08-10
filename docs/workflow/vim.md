# Vim

## 什么是Vim？

## 为什么使用Vim？

## Vim的推荐配置

```
" base 
syntax on
set encoding=utf-8

" view 
set number
set linebreak
set scrolloff=5
set laststatus=2

" indent 
set nofoldenable
set autoindent
set shiftwidth=4 
set softtabstop=4 
set expandtab

" search 
set hlsearch
set incsearch
set ignorecase
set smartcase

" edit 
set nobackup
set undodir=~/.vim/undodir
set noswapfile
set noerrorbells
set autoread
set wildmenu
set wildmode=longest:list,full

" map
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap {<CR> {}<ESC>i<CR><ESC>O<TAB>
inoremap < <><ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap <C-F> <RIGHT>
inoremap <C-B> <LEFT>
inoremap <C-O> <ESC>o

" NERDTree 
inoremap <C-H> <ESC><C-W>h
noremap <C-H> <ESC><C-W>h
inoremap <C-L> <ESC><C-W>l
noremap <C-L> <ESC><C-W>l
```

