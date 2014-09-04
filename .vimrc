" not all of this is understood. vim ide by sontek...
" http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide
"filetype off
"call pathogen#incubate()
"call pathogen#helptags()
"set foldmethod=indent
"set foldlevel=99
"map <leader>td <Plug>TaskList
"map <leader>g :GundoToggle<CR>
"let g:pyflakes_use_quickfix = 0
"let g:pep8_map='<leader>8'
"au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"
"set completeopt=menuone,longest,preview
"map <leader>n :NERDTreeToggle<CR>
"map <leader>j :RopeGotoDefinition<CR>
"map <leader>r :RopeRename<CR>
"nmap <leader>a <ESC>:Ack!
"set statusline=%{fugitive#statusline()}
"nmap <silent><Leader>tf <Esc>:Pytest file<CR>
"nmap <silent><Leader>tc <Esc>:Pytest class<CR>
"nmap <silent><Leader>tm <Esc>:Pytest method<CR>
"nmap <silent><Leader>tn <Esc>:Pytest next<CR>
"nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
"nmap <silent><Leader>te <Esc>:Pytest error<CR>

" https://gist.github.com/MicahElliott/3048622
" Add the virtualenv's site packages to vim path
"py << EOF
"import os.path
"import sys
"import vim
"if 'VIRTUAL_ENV' in os.environ:
"	project_base_dir = os.environ['VIRTUAL_ENV']
"	sys.path.insert(0, project_base_dir)
"	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"	execfile(activate_this, dict(__file__=activate_this))
"EOF

" hack for tasklist bundle conflict
"nnoremap <leader>v <Plug>TaskList

" homebrew
set nocompatible
syntax on
filetype on
filetype plugin indent on
set scrolloff=5
colorscheme oceanblack

" set line numbers on
set nu

if &term =~ "term"
  set t_Co=256
endif
