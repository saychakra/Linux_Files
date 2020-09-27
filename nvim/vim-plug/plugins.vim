" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " NERDTree
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " For Autocompletion
    Plug 'vim-scripts/AutoComplPop'
    " For supertab
    Plug 'ervandew/supertab'
    " Syntax highlighting
    Plug 'scrooloose/syntastic'
    """"""""""""""""""" colorscheme Plugins """""""""""""""""""
    " Gotham colorscheme
    Plug 'whatyouhide/vim-gotham'
    " Deep-Space colorscheme
    Plug 'tyrannicaltoucan/vim-deep-space' 
    " ayu light and dark colorschemes
    Plug 'ayu-theme/ayu-vim'

    " Airline and Airline theme
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " for commenting
    Plug 'tpope/vim-commentary'
call plug#end()
