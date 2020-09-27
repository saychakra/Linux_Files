source $HOME/.config/nvim/vim-plug/plugins.vim

set encoding=utf-8
set modifiable " ma could have also done!
" <!- for enabling both absolute and relative numbering ->
set number
set relativenumber
set autoindent
set smartindent
set tabstop=4
set background=dark
set termguicolors
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set mouse=a
" colorscheme deep-space

"""""" For Ayu colorscheme """"""
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" <!----------------------------" for global copy"----------------------------------------!>
set clipboard+=unnamedplus

" <!----------------------------" g++ compile C++ files and running them "----------------------------------------!>
autocmd vimEnter *.cpp map <F3> :w <CR> :!clear ; g++ --std=c++17 % && gnome-terminal <CR>
autocmd vimEnter *.cpp map <F2> :w <CR> :!g++ --std=c++17 % <CR>

" <!----------------------------" Syntax checking "----------------------------------------!>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

""""""""""""""""""""""""" Shortcut bindings """""""""""""""""""""""""
nmap <C-s> :w<Enter>
" remapping commenting line
" TODO

" for nerd tree toggle
nmap <C-f> :NERDTreeToggle %<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

