set number
set autoindent
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set mouse=a
colorscheme torte
" <!----------------------------" g++ compile C++ files and running them "----------------------------------------!>
nnoremap <F3> :!g++ % -std=c++17<Enter>
nnoremap <F4> :!./a.out<Enter>
