" -------------------------------------------- "
" Plugins                                      "
" -------------------------------------------- "

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Airline Theme
Plugin 'vim-airline/vim-airline'
"Better file browser
Plugin 'scrooloose/nerdtree'
"Text outlining and task management for Vim based on Emacs’ Org-Mode
Plugin 'jceb/vim-orgmode'
"Easy surrounding of text
Plugin 'tpope/vim-surround' 
"Python and other languages code checker
Plugin 'vim-syntastic/syntastic'
"Code Completion
Plugin 'ycm-core/YouCompleteMe'

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" -------------------------------------------- "
" Colorscheme and preferences                  "
" -------------------------------------------- "

syntax on
colorscheme gruvbox
set bg=dark

"Tabs, numbers, and other stuff
set tabstop=4
set number
set relativenumber
set smartindent
set shiftwidth=4
set expandtab
imap jk <Esc>

" -------------------------------------------- "
" Compiling and running shortcuts              "
" -------------------------------------------- "

"For C
map <C-F5> :w <CR> :!clear && gcc % <CR>
map <F5> :w <CR> :!clear && gcc % -o %< && ./%< <CR>

"For Python
map <F9> :w <CR> :!clear && python % <CR>

"For C++
map <C-F8> :w <CR> :!clear && g++ % <CR>
map <F8> :w <CR> :!clear && g++ % -o %< && ./%< <CR>
