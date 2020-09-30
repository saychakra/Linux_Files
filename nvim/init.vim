source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/plug-config/coc.vim

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
colorscheme gruvbox

"""""" For Ayu colorscheme """"""
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
" colorscheme ayu

" <!----------------------------" for global copy"----------------------------------------!>
set clipboard+=unnamedplus

" <!----------------------------" g++ compile C++ files and running them "----------------------------------------!>
autocmd vimEnter *.cpp map <F2> :w <CR> :!g++ --std=c++17 % <CR>
autocmd vimEnter *.cpp map <F3> :w <CR> :!clear ; g++ --std=c++17 % && gnome-terminal <CR>

" <!----------------------------" Compiling and running java programs "----------------------------------------!>
autocmd vimEnter *.java map <F2> :w <CR> :!javac % <CR>
autocmd vimEnter *.java map <F3> :w <CR> :!clear ; javac % && gnome-terminal <CR>

" <!----------------------------" Syntax checking "----------------------------------------!>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

""""""""""""""""""""""""" Shortcut bindings """""""""""""""""""""""""
" for reloading init.vim instead of quitting and entering back again to see
" changes
nmap <C-s> :w <CR> :source ~/.config/nvim/init.vim<CR>

" for nerd tree toggle
nmap <C-f> :NERDTreeToggle %<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" """"""""""""""""""""""""""""" Setting a few other key mappings """""""""""""""""""""""""""""

" " for moving lines up and down
" xnoremap <C-Up> :move '<-2<CR>gv-gv
" xnoremap <C-Down> :move '>+1<CR>gv-gv

" for easy split navigation by removing default extra C-W keypress
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
