let mapleader = ","
call pathogen#infect()

" Stupid shift key fixes
map:W :w
map:WQ :wq
map:wQ :wq
map:Q :q

syntax on
filetype plugin indent on
set number
set ruler
set nowrap

" Easy move to front and back
map L $
map H ^
" Keys for moving between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Incremental search, i.e. highlight search terms in realtime
set incsearch
set hls
set ignorecase
set smartcase

" Indentation and soft tabs
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent

" ctags
" set where to recursively look for tag file
set tags+=tags;~/

" Bash like autocomplete with Tab
set wildmenu
set wildmode=list:longest,full

" Show file name
set ls=2
" Show contextual lines when at the edges
set scrolloff=5
" disable beeping
set vb t_vb=
set pastetoggle=<F2>
set foldenable
set nocompatible

set backupdir=~/.vim/swp/backup
set directory=~/.vim/swp/tmp

" remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" colors
" status bar coloring
highlight StatusLine ctermfg=119 ctermbg=0
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold
highlight PmenuSel ctermbg=1 gui=bold
highlight Search ctermbg=darkgrey ctermfg=white

" expands open command with directory of current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" switch tab
nmap <silent> ;' :tabnext<CR>
nmap <silent> ;l :tabprev<CR>

vmap <leader>bb :Tabularize /
vmap <leader>vv :Tabularize /=><CR>

set winwidth=120
" We have to have a winheight bigger than we want to set winminheight. But if
" we set winheight to be huge before winminheight, the winminheight set will
" fail.
set winheight=10
set winminheight=10
set winheight=999

" go to previous file
nnoremap <leader><leader> <c-^>

"dont scan included files for complete
set complete-=i

au BufRead,BufNewFile *.scss set filetype=sass
