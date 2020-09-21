source $HOME/.config/nvim/vim-plug/plugins.vim

set encoding=utf-8
set modifiable " ma could have also done!
" <!- for enabling both absolute and relative numbering ->
set number
set relativenumber
set autoindent
set smartindent
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set mouse=a
colorscheme torte

" <!----------------------------" for global copy"----------------------------------------!>
set clipboard+=unnamedplus

" <!----------------------------" g++ compile C++ files and running them "----------------------------------------!>
autocmd vimEnter *.cpp map <F2> :w <CR> :!clear ; g++ --std=c++17 % && gnome-terminal <CR>

" <!----------------------------" Syntax checking "----------------------------------------!>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" for saving with ctr+s
nmap <C-s> :w<Enter>

" for nerd tree toggle
nmap <C-f> :NERDTreeToggle %<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

