" Pathogen to auto install plugins in ~/vim/bundle
execute pathogen#infect()
execute pathogen#helptags()

autocmd BufRead,BufNewFile *.tac set filetype=python
autocmd BufRead,BufNewFile *.ngt set filetype=handlebars

syntax enable

"colorscheme tender
set background=dark
colorscheme PaperColor

set t_Co=256
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
set tags=
set wildignore+=*.pyc,*.orig,*.egg-info,*.class,*.jar,tags,*node_modules*
"set clipboard=unnamedplus
set laststatus=2

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

nmap <Leader>t :tabnew<CR>
nmap <Leader>n :NERDTree<CR>
nmap <Leader>f :NERDTreeFind<CR>
nmap <Leader>s :mksession!<CR>
nmap <leader>a :Rg 
nmap <Leader>d :YcmCompleter GoTo<CR>
nmap <C-p> :FZF<CR>
nmap <C-a> :terminal<CR>

" XML format
map <Leader>x :%s/></>\r</g<CR>:0<CR>=:$<CR>
" JSON format
nmap <Leader>g :%!python -m json.tool<CR>


function! s:mylcd(folder)
    execute 'lcd ' a:folder
endfunction

nmap <C-x> :call fzf#run(fzf#wrap({'source': 'find /home/lindmark/src -maxdepth 5 -name ".git" -exec dirname {} \;', 'sink': function('<SID>mylcd')}))<CR>
"nmap <C-w> :call fzf#run(fzf#wrap({'source': 'find /home/lindmark/Dropbox/vimwiki \;'}))<CR>

let g:pyflakes_use_quickfix = 0

set hidden

let g:NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeWinSize=70

let g:agprg="/usr/bin/rg --column"
let g:ackprg = 'rg --vimgrep --no-heading'

let g:fzf_buffers_jump = 1
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_layout = { 'down': '~40%' }
let $FZF_DEFAULT_COMMAND='rg --files .'

let g:markdown_enable_spell_checking = 0

if has("gui_running")
    set background=dark
    colorscheme solarized
    let g:NERDTreeWinSize=30
    "set lines=999 columns=999
endif

function SqlFormatter()
    :%!sqlformat --reindent --keywords upper --identifiers lower -<CR>
endfunction
