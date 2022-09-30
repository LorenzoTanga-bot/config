syntax on
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set ai
:set smarttab
:set softtabstop=4
:set mouse=a
:set hlsearch
:set ruler
:highlight Comment ctermfg=green

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/Iron-E/nvim-tabmode'
set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>
autocmd VimEnter * NERDTree

:set completeopt-=preview " For No Previews

:colorscheme jellybeans

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = 'ÓÇ∞'
let g:airline_left_alt_sep = 'ÓÇ±'
let g:airline_right_sep = 'ÓÇ≤'
let g:airline_right_alt_sep = 'ÓÇ≥'
let g:airline_symbols.branch = 'ÓÇ†'
let g:airline_symbols.readonly = 'ÓÇ¢'
let g:airline_symbols.linenr = 'ÓÇ°'

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
:set guifont=DroidSansMono_Nerd_Font:h1

nnoremap <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1

" setup for tagbar
nmap <F8> :TagbarToggle<CR>