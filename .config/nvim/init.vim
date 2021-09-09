filetype on

" Plugins

call plug#begin()
  Plug 'scrooloose/nerdtree'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-compe'
  Plug 'ryanoasis/vim-devicons'
call plug#end()

filetype plugin indent on

set path+=** " Searches current directory recursively.
set wildmenu " Display all matches when tab complete.
set incsearch " Incremental search
set hidden " Needed to keep multiple buffers open
set nobackup " No auto backups
set noswapfile " No swap
set t_Co=256 " Set if term supports 256 colors.
set number " Display line numbers
set clipboard=unnamedplus " Copy/paste between vim and other programs.
syntax enable
let g:rehash256 = 1

set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=2                " One tab == two spaces.
set tabstop=2                   " One tab == two spaces.

" autocmd vimenter * NERDTree " Autostart NERDTree
map <C-n> :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
" let g:NERDTreeDirArrowExpandable = '►'
" let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize=30

" Mouse Scrolling

set mouse=nicr
set mouse=a

" Splits and Tabbed Files

set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 

color desert
set cursorline
hi CursorLine term=bold cterm=bold guibg=Gray40

set autochdir
noremap <f9> :!make<CR>

lua require('lspconfig').pyright.setup({})
