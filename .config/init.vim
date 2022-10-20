:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
set showmatch               
set ignorecase              
syntax on                   

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/tpope/vim-surround' 
Plug 'https://github.com/preservim/nerdtree' 
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/vim-airline/vim-airline' 
Plug 'https://github.com/lifepillar/pgsql.vim' 
Plug 'https://github.com/ap/vim-css-color' 
Plug 'https://github.com/ryanoasis/vim-devicons' 
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/mg979/vim-visual-multi'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/machakann/vim-sandwich'
Plug 'https://github.com/wadackel/vim-dogrun'

call plug#end()

map <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
tnoremap <esc> <C-\><C-n>
tnoremap <leader>e <C-\><C-n>


nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview 

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
