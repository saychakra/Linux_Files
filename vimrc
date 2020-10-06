set number
set relativenumber
set autoindent
set smartindent
set backspace=indent,eol,start
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set mouse=a
set termguicolors
set clipboard=unnamedplus
colorscheme torte

" <!----------------------------" g++ compile C++ files and running them "----------------------------------------!>
nnoremap <F3> :w <CR> :!g++ -std=c++17 % && gnome-terminal <CR>
nnoremap <F2> :w <CR> :!g++ -std=c++17 % <CR>
