syntax on

"--- General Settings --- "
set ai
"set shiftwidth=4
"set ruler
"set backspace=2
"set nowrap
set showcmd                      "Show (partial) command in the status line
set expandtab                    "Auto transform tab to space.
set tabstop=4                    "Set tab equals 4 spaces.
set laststatus=2
set number                       "Let's activate line numbers
let mapleader = ","              "The default leader is \, but a comma is much better.
set backspace=indent,eol,start   "Make backspace behave like every other editor.
set clipboard=unnamed

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


"--- Powerline ---"
set rtp+=$HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup

