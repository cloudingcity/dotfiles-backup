syntax on

set ai         
set shiftwidth=4 
set ruler       
set backspace=2
:set nowrap
:set expandtab
:set shiftwidth=4


set laststatus=2
set t_Co=256
source /Users/shawnpeng/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup