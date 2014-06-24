" Pathogen package manager. Install all future packages to .vim/bundle
call pathogen#infect()
filetype plugin indent on
syntax on

colorscheme desert

set tabstop=4 shiftwidth=4 expandtab smarttab
set nocompatible
set autoindent
set showcmd
set number 
set ignorecase
set smartcase

" Map ii to escape in insert and visual modes
inoremap ii <Esc>
vnoremap ii <Esc> 

set incsearch
" Highlight search, but remove highlight after pressing enter
set hlsearch
nnoremap <CR> :noh<CR><CR>

set laststatus=2
set statusline=%F%m%r%h%w\ [%l,%v]

set runtimepath+=$GOROOT/misc/vim

" Tab to switch focus in splits
map <Tab> <C-W>w

set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
