if &compatible
  set nocompatible               " Be iMproved
endif

set termguicolors

" Required:
set runtimepath+=/home/kudzuyu/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/kudzuyu/.vim/bundles')
  call dein#begin('/home/kudzuyu/.vim/bundles')

  " Required:
  call dein#add('/home/kudzuyu/.vim/bundles/repos/github.com/Shougo/dein.vim')

  let s:toml_dir = expand('~/.config/nvim/plugins')
  call dein#load_toml(s:toml_dir . '/core.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir . '/languages.toml', {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

set clipboard+=unnamedplus
set noswapfile
set hidden
set autoindent
set shiftwidth=2
set tabstop=2
set expandtab
set mouse=a
set number
set autochdir
set background=dark
set completeopt=menuone,noinsert
colorscheme nord

nnoremap j gj
nnoremap k gk
nnoremap <Space>feR :source ~/.config/nvim/init.vim<CR>
nnoremap <Space>fed :e ~/.config/nvim/init.vim<CR>
nnoremap <Space>ft :<C-u> Defx <CR>

inoremap <expr><CR> pumvisible() ? "<C-y>" : "<CR>"
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

au BufNewFile, BufRead, *.v set vlang

if (&term =~ '^xterm' && &t_Co == 256)
  set t_ut= | set ttyscroll=1
endif

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
