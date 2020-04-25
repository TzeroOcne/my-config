set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

""""""""""""""""""""""""""""""""""""""""
" Keymap insert shortcut
""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""
" Keymap terminal shortcut
""""""""""""""""""""""""""""""""""""""""
tnoremap <Esc> <C-\><C-n>

""""""""""""""""""""""""""""""""""""""""
" Settings
""""""""""""""""""""""""""""""""""""""""
set relativenumber
set number

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

call plug#begin(stdpath('data').'/plugged')

Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'gasparch/tagbar'
Plug 'mildred/vim-bufmru'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'moll/vim-bbye'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

""""""""""""""""""""""""""""""""""""""""
" Color scheme
""""""""""""""""""""""""""""""""""""""""
Plug 'sickill/vim-monokai/'

call plug#end()

""""""""""""""""""""""""""""""""""""""""
" NERDTree related stuff
""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter NERD_tree* :LeadingSpaceDisable
map <C-\> :NERDTreeFocus<CR>

""""""""""""""""""""""""""""""""""""""""
" BufMRU related stuff
""""""""""""""""""""""""""""""""""""""""
nmap <A-B> :BufMRUNext<CR>
nmap <A-b> :BufMRUPrev<CR>
nmap <Esc>B :BufMRUNext<CR>
nmap <Esc>b :BufMRUPrev<CR>

""""""""""""""""""""""""""""""""""""""""
" Run external script
""""""""""""""""""""""""""""""""""""""""
exe 'so '.stdpath('config').'/coc-conf.vim'
exe 'so '.stdpath('config').'/airline-conf.vim'

""""""""""""""""""""""""""""""""""""""""
" Indent line settings
""""""""""""""""""""""""""""""""""""""""
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_leadingSpaceEnabled = 1

""""""""""""""""""""""""""""""""""""""""
" Set color scheme
""""""""""""""""""""""""""""""""""""""""
syntax enable
colorscheme monokai

