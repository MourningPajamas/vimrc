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

"""""""""""""""""""""""""""""""""""""""""""""""

"Compiling and running shortcuts

"For C
map <C-F5> :w <CR> :!clear && gcc % <CR>
map <F5> :w <CR> :!clear && gcc % -o %< && ./%< <CR>

"For Python
map <F9> :w <CR> :!clear && python % <CR>

"For C++
map <C-F8> :w <CR> :!clear && g++ % <CR>
map <F8> :w <CR> :!clear && g++ % -o %< && ./%< <CR>

"""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

"Airline Theme
Plug 'vim-airline/vim-airline'
"Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'
" Better autocompletion
Plug 'Shougo/neocomplcache.vim'
" Better file browser
Plug 'scrooloose/nerdtree'
"Allows you to use <Tab> for all your insert completion needs (:help ins-completion).
Plug 'ervandew/supertab'
" Python and other languages code checker
Plug 'scrooloose/syntastic'
"Lines things up
Plug 'godlygeek/tabular'
"Easy surrounding of text
Plug 'tpope/vim-surround' 
" Python and other languages code checker
Plug 'vim-syntastic/syntastic'
"Lines things up
Plug 'godlygeek/tabular'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""

"Enables neocomplcache
let g:neocomplcache_enable_at_startup = 1
