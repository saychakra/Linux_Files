source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/plug-config/coc.vim

" set leader key
let g:mapleader = "\<Space>"

set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set modifiable                          " For making the current directory structure modifiable
set number                              " Line numbers
set relativenumber                      " Relative line numbers
set autoindent                          " automatic indentations
set smartindent                         " Makes indenting smart
set ruler              			        " Show the cursor position all the time
set iskeyword+=-                      	" treat dash separated words as a word text object
set t_Co=256                            " Support 256 colors
set background=dark                     " Setting background to dark
set termguicolors                       " Setting terminal colors to match set colorschemes
set cursorline                          " Enable highlighting of the current line
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set tabstop=4                           " Insert 2 spaces for a single tab
set expandtab                           " Converts tabs to spaces
set smarttab                            " Smart tabs
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set mouse=a                             " Enabling mouse inside editor
set autochdir                           " Your working directory will always be the same as your working directory
" colorscheme gruvbox
" colorscheme deep-space


"""""" For Ayu colorscheme """"""
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" <!----------------------------" g++ compile C++ files and running them "----------------------------------------!>
autocmd vimEnter *.cpp map <F2> :w <CR> :!g++ --std=c++17 % <CR>
autocmd vimEnter *.cpp map <F3> :w <CR> :!clear ; g++ --std=c++17 % && gnome-terminal <CR>

" TODO: figure out some kind of way to detect the extension of the filetype in
" the buffer and trigger the function automatically instead of a generic
" keymap
nmap <F3> :w <CR> :!clear ; g++ --std=c++17 % && gnome-terminal <CR>
nmap <F2> :w <CR> :!clear ; g++ --std=c++17 % <CR>

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

" for nerd tree toggle
nmap <C-f> :NERDTreeToggle %<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" """"""""""""""""""""""""""""" Setting a few other key mappings """""""""""""""""""""""""""""

" " for moving lines up and down
xnoremap <M-Up> :move '<-2<CR>gv-gv
xnoremap <M-Down> :move '>+1<CR>gv-gv

" for easy split navigation by removing default extra C-W keypress
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" for commenting lines (Ctrl + /) for commenting. Note: / in vim is
" interpreted as _
nnoremap <C-_> :Commentary <CR>
vnoremap <C-_> :Commentary <CR>

" auto source when writing to init.vm alternatively you can run :source $MYVIMRC
au! BufWritePost $MYVIMRC source %      
