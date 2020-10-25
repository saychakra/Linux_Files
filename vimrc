set number                              " Line numbers
set relativenumber                      " Relative line numbers
set autoindent                          " automatic indentations
set smartindent                         " Makes indenting smart
set encoding=utf-8                      " The encoding displayed
set backspace=indent,eol,start          " Pressing backspace will shift with indentation
set fileencoding=utf-8                  " The encoding written to file
set iskeyword+=-                      	" treat dash separated words as a word text object
set t_Co=256                            " Support 256 colors
set background=dark                     " Setting background to dark
set ruler              			        " Show the cursor position all the time
set termguicolors                       " Setting terminal colors to match set colorschemes
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set clipboard=unnamedplus               " Copy paste between vim and everything else
set tabstop=8                           " This always needs to be 8. Change any of the below ones for the tab width you want
set softtabstop=4                       " vim provides a mixture of tabs and spaces of the required shiftwidth length
set shiftwidth=4                        " This is for the tabstop you want
set expandtab
set mouse=a                             " Enabling mouse inside editor
set autochdir                           " Your working directory will always be the same as your working directory
set noswapfile                          " I don't need swapfiles all over the project directories!
colorscheme torte
" <!----------------------------" g++ compile C++ files and running them "----------------------------------------!>
nnoremap <F2> :w <CR> :!g++ -std=c++17 % <CR>
nnoremap <F3> :w <CR> :!g++ -std=c++17 % && gnome-terminal <CR>


" <!----------------------------" Other key bindings "----------------------------------------!>
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

inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv
