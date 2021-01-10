let g:polyglot_disabled = ['markdown']
let g:polyglot_disabled = ['autoindent']

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-python/python-syntax'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'junegunn/seoul256.vim'

Plugin 'sheerun/vim-polyglot'

call vundle#end()
filetype plugin indent on

runtime! debian.vim

if has("syntax")
  syntax on
endif

if has("autocmd")
  filetype plugin indent on
endif

":PluginInstall
":PluginList
":PluginClean

set number
set noerrorbells
set hlsearch
set ignorecase
set tabstop=4
set autoindent
 					 
map <C-n> :NERDTreeToggle<CR>
nmap <C-m> :TagbarToggle<CR>
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

syntax enable

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif

set visualbell

set background=dark
let g:python_highlight_all = 1
"let g:solarized_termcolors=256
"colorscheme solarized
colorscheme gruvbox
"colorscheme seoul256
