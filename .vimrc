" BEGIN NEW (07-JAN-2020) STYLE
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'

" all of your plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" homebrew
let python_highlight_all=1
syntax on
set scrolloff=5

if &term =~ "term"
    set t_Co=256
endif

" set line numbers on
set nu

" split window control
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" enable folding
set foldmethod=indent
set foldlevel=99

" enable folding with the spacebar
nnoremap <space> za

" see docstrings for folded code
let g:SimplyFold_docstring_preview=1

" proper PEP 8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix

" full stack development spacing
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 softtabstop=2 shiftwidth=2

" flag unnecessary whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" UTF-8 support
set encoding=utf-8

" YouCompleteMe custimizations
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
	project_base_dir = os.environ['VIRTUAL_ENV']
	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
	execfile(activate_this, dict(__file__=activate_this))
EOF

" hide .pyc files in nerdtree
let NERDTreeIgnore=['\.pyc$', '\-$']
