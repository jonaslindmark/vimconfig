" Pathogen to auto install plugins in ~/vim/bundle
call pathogen#infect()
call pathogen#helptags()

autocmd BufRead,BufNewFile *.tac set filetype=python

syntax enable
set background=light
colorscheme solarized

set backspace=indent,eol,start " Make is possible to delete previous entries with backspace
set number " Show line numbers
set ruler " Show current position in status
set nobackup " Don't use backup or swapfiles
set noswapfile " Don't use backup or swapfiles
set mouse=a " Enable mouse scrolling in console vim
set tabstop=4
set shiftwidth=4
set expandtab
set nocompatible
set nowrap " Don't wrap lineendings
set hlsearch " Highligh searches
set list listchars=tab:\ \ ,trail:· " See tabs
set autowrite " write buffer when leaving
set showmode " show the current mode
set autoread " Refresh files changed outside of vim if not changed in vim
set foldenable foldmethod=indent " Folding on with indent
set pastetoggle=<F2>
set completeopt=longest,menuone " Complete as you type
set noerrorbells
set visualbell
set lazyredraw
set laststatus=2
set incsearch
set clipboard=unnamed
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds
set tags=/Users/jonasl/src/wrapp/tags
let Tlist_Ctags_Cmd='/opt/local/bin/ctags'

" Ignore the following files
set wildignore+=*.pyc,*.orig,*.egg-info,*.class,*.jar,tags,*node_modules*

if exists('$TMUX')
    set ttymouse=xterm2
endif

au FileType crontab set nobackup nowritebackup
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
au BufRead,BufNewFile *.hamlc set ft=haml
au BufNewFile,BufRead *.json set ft=javascript
au BufNewFile,BufRead *.ejs set ft=html

" Enable backspace outside of newly inserted text
let mapleader = ','
filetype plugin indent on

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Tabs
nnoremap tn :tabn<CR>
nnoremap tp :tabp<CR>

" Resize
map + <c-w>+
map - <c-w>-

autocmd FileType python set omnifunc=pythoncomplete#Complete

map <Leader>g !python -m json.tool<CR>
map <Leader>t :tabnew<CR>
map <Leader>s :mksession!<CR>
nmap <leader>a :Ag! 

let g:pyflakes_use_quickfix = 0
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$\|node_modules',
    \ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\|\.DS_Store',
    \ 'link': 'some_bad_symbolic_links',
    \ }
let g:ctrlp_extensions = [
     \ 'ctrlp-filetpe',
     \ ]
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_working_path_mode = ''
let g:ctrlp_clear_cache_on_exit = 0

function! InsertDebug()
    exe "normal Oimport ipdb;ipdb.set_trace()\e"
endfunction
command! DebugIt :call InsertDebug()
