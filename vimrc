set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Packages managed by Vundle
Plugin 'tpope/vim-fugitive'
Plugin 'L9'

" colourschemes managed by Vundle

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


syntax on
set relativenumber

"long line handling
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
 
"normal mode: no use of arrows, to force hjkl; left/right indent
nmap <left> <<
nmap <right> >>

"use up/down arrows to move line/selection up down in normal/visual
" mode
nmap <Up> [e
nmap <Down> ]e
vmap <Up> [egv
vmap <Down> ]egv

"insert mode: no use of arrows, to force normal mode switch
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" move but stay selected in visual mode with left/right
vmap <Left> <gv
vmap <Right> >gv

"better working of j/k: move by screen line, not file line
nnoremap j gj
nnoremap k gk

" set appropriate tabbing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" use 'jj' in quick succession for ESC
inoremap jj <ESC>

" working with split windows
" horizontal split with ',hs', then focus
nnoremap <leader>hs <C-w>v<C-w>l
"        
"vertical split with ',vs', then focus
nnoremap <leader>vs <C-w>s<C-w>l

"ctrl and h/j/k/l for moving between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
