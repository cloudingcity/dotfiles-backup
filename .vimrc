set nocompatible   " Disable vi-compatibility

"--- Vim-plug ---"
so ~/.vim/plugins.vim


"--- General Settings ---"
syntax on
set ai
set shiftwidth=4
set ruler
"set nowrap
set noshowmode                   "No show status mode
set showcmd                      "Show (partial) command in the status line
set expandtab                    "Auto transform tab to space.
set tabstop=4                    "Set tab equals 4 spaces.
set laststatus=2
set number                       "Let's activate line numbers
set ignorecase                   "Ignore case in search patterns"
set smartcase                    "No ignore case when pattern has uppercase"
set backspace=2                  "Make backspace behave like every other editor.
set clipboard=unnamed            "Allow copy to clipboard
set ttimeoutlen=50               


"--- Visuals ---"
" Gruvbox
"let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
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
let mapleader = ","              "The default leader is \, but a comma is much better.

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle.
nmap <C-O> :NERDTreeToggle<cr>

"Make CtrlP easier to execute.
nmap <c-e> :CtrlPBufTag<cr>
nmap <C-y> :CtrlPMRUFiles<cr>

"Quick click jj to ESC in insert mode.
imap jj <Esc>


"--- Plugins  ---"
" CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:30,results:30'
" Lightline
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

