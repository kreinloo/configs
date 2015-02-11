"
"  Kris Reinloo
"  2015
"

execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible
set encoding=utf-8
set showcmd
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set showtabline=2
set smartindent
set ruler
set hlsearch
set incsearch
set cursorline
set number
set mouse=a
set list
set listchars=trail:.
set textwidth=80
set colorcolumn=80
set nocp
set term=xterm-256color
set foldmethod=syntax
set background=dark
set laststatus=2

colorscheme base16-default

"inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

nmap j gj
nmap k gk

nmap <F8> :NERDTreeTabsToggle<CR>
nmap <F9> :TagbarToggle<CR>

nmap ¡ 1gt
nmap ™ 2gt
nmap £ 3gt
nmap ¢ 4gt
nmap ∞ 5gt
nmap § 6gt
nmap ¶ 7gt
nmap <A-1> 1gt
nmap <A-2> 2gt
nmap <A-3> 3gt
nmap <A-4> 4gt
nmap <A-5> 5gt
nmap <A-6> 6gt
nmap <A-7> 7gt
nmap <A-8> 8gt

nmap <C-Right> <ESC>:tabnext<CR>
nmap <C-Left>  <ESC>:tabprev<CR>

nmap <C-t> :tabedit<CR>
nmap <C-w> :q<CR>
nmap † :tabedit<CR>
nmap ∑ :q<CR>

nmap <C-f> vipgq<CR>

nmap <silent> <A-Up>    :wincmd k<CR>
nmap <silent> <A-Down>  :wincmd j<CR>
nmap <silent> <A-Left>  :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_no_startup_for_diff = 0
let g:nerdtree_tabs_smart_startup_focus = 1
