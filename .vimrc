set nocompatible        " required
filetype off            " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'google/vim-colorscheme-primary'
Plugin 'raimondi/delimitmate'
Plugin 'mbbill/undotree'

" All of your Plugins must be added before the following line
call vundle#end()       " required
filetype plugin indent on       "required

" logic to define which scheme to use based upon the VIM mode.
if has('gui_running')
    colorscheme primary
else
    colorscheme primary
endif

" Access system cilpboard
set clipboard=unnamed

" Switch between solarized color scheme
call togglebg#map("<F5>")

" Make code pretty
let python_highlight_all=1

" Enable persistent undo
if has("persistent_undo")
    set undodir='~/.undodir/'
    set undofile
endif

" Auto-complete config
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g   :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" See docstrings for folded code
let g:SimpylFold_docstring_preview=1

"Turn on syntax
syntax on
set t_Co=256
set background=dark

" Set split area
set splitbelow
set splitright

"Tabs are at proper location.
set tabstop=8
"Indenting is four spaces.
set shiftwidth=4
"Don't use actual tab characters, use spaces instead.
set expandtab
set smarttab

"Turn on autoindent
set autoindent
"Turn on smartindent
set smartindent

"Set line margin to 79 chars
set tw=79
set formatoptions+=t

"Settings specific to python development
au BufNewFile,BufRead .py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

"Display line numbers
set number

"Use UTF-8
set encoding=utf-8

"Set Shift + Tab to be a hard tab
inoremap <S-Tab> <C-V><Tab>
