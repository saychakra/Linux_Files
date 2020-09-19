source $HOME/.config/nvim/vim-plug/plugins.vim
set number
set autoindent
set smartindent
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set mouse=a
colorscheme torte

" <!----------------" for copying to system clipboard "-----------------------!>
set clipboard+=unnamedplus

" <!----------------" g++ compile C++ files and running them "----------------------!>
autocmd vimEnter *.cpp map <F2> :w <CR> :!clear ; g++ --std=c++17 %; gnome-terminal <CR>

" <!------------" Syntax checking "-----------------!>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
