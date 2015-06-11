" Pathogen to auto install plugins in ~/vim/bundle
call pathogen#infect()
call pathogen#helptags()

autocmd BufRead,BufNewFile *.tac set filetype=python
autocmd BufRead,BufNewFile *.ngt set filetype=handlebars

syntax enable
set t_Co=256
colorscheme grb256
"set background=dark
"colorscheme solarized

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
set clipboard=unnamedplus
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds
set tags=/home/lindmark/tags
let Tlist_Ctags_Cmd='/usr/bin/ctags'

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
au BufNewFile,BufRead *.mpd set ft=xml

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

autocmd FileType python set omnifunc=pythoncomplete#Complete
au FileType ruby setl sw=2 sts=2 et

map <Leader>g !python -m json.tool<CR>
map <Leader>t :tabnew<CR>
map <Leader>n :NERDTree<CR>
map <Leader>s :mksession!<CR>
nmap <leader>a :Ag 

" XML format
map <Leader>x :%s/></>\r</g<CR>:0<CR>=:$<CR>

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

" Eclim stuff
"let g:EclimCompletionMethod = 'omnifunc'
"highlight Pmenu ctermbg=238 gui=bold

let NERDTreeIgnore = ['\.pyc$']

function! InsertDebug()
    exe "normal Oimport ipdb;ipdb.set_trace()\e"
endfunction
command! DebugIt :call InsertDebug()

if has("gui_running")
  " GUI is running or is about to start maximize gvim window
  set lines=999 columns=999
endif
