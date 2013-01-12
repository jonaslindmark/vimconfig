" Pathogen to auto install plugins in ~/vim/bundle
call pathogen#infect()

" When vimrc is edited, reload vim
au! BufWritePost .vimrc source $MYVIMRC
autocmd BufRead,BufNewFile *.tac set filetype=python

" Make is possible to delete previous entries with backspace
set backspace=indent,eol,start

set number " Show line numbers
set ruler " Show current position in status


" Don't use backup or swapfiles
set nobackup
set noswapfile

" Enable mouse scrolling in console vim
set mouse=a

" Tab stuff
set tabstop=4
set shiftwidth=4
set expandtab

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
au BufRead,BufNewFile *.hamlc set ft=haml
au BufNewFile,BufRead *.json set ft=javascript

" Enable backspace outside of newly inserted text
set nocompatible

let mapleader = ','

filetype plugin indent on

" Enable syntax highlighting
syntax on

" Set colorscheme
" colorscheme wombat256mod
set t_Co=256

" Don't wrap lineendings
set nowrap

" Ignore the follwing files in CommandT
set wildignore+=*.pyc,*.orig,*.egg-info,*.class

" Highligh searches
set hlsearch

" See tabs
" set list listchars=tab:\ \ ,trail:·

" write buffer when leaving
set autowrite

" show the current mode
set showmode

" Refresh files changed outside of vim if not changed in vim
set autoread

" Folding on with indent
set foldenable foldmethod=indent

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set clipboard=unnamed

set pastetoggle=<F2>
map + <c-w>+
map - <c-w>-
