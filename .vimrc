set nocompatible   " Disable vi-compatibility

"--- Vim-plug ---"
so ~/.vim/plugins.vim


"--- General Settings ---" 
syntax on
set ai
"set shiftwidth=4
"set ruler
"set backspace=2
"set nowrap
set noshowmode                   "No show status mode
set showcmd                      "Show (partial) command in the status line
set expandtab                    "Auto transform tab to space.
set tabstop=4                    "Set tab equals 4 spaces.
set laststatus=2
set number                       "Let's activate line numbers
let mapleader = ","              "The default leader is \, but a comma is much better.
set backspace=indent,eol,start   "Make backspace behave like every other editor.
set clipboard=unnamed            "Allow copy to clipboard


"--- Visuals ---"
colorscheme Tomorrow-Night-Eighties
set t_Co=256                     "Use 256 colors. This is useful for Terminal Vim.
set cursorline


"--- Search ---"
set hlsearch
set incsearch


"--- Split Management ---"
set splitbelow
set splitright
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"--- Mappings ---"
"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle.
nmap <C-O> :NERDTreeToggle<cr>

"Make CtrlP easier to execute
nmap <c-y> :CtrlPBufTag<cr>
nmap <C-e> :CtrlPMRUFiles<cr>


"--- Plugins  ---"
" CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:30,results:30'


"--- Powerline ---"
set rtp+=$HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup

