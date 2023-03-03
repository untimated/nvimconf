:set number
:set mouse=a
:set nowrap
:set smarttab
:set tabstop=4
:set shiftwidth=4
:set autoindent
:set cindent
:set smarttab
:set softtabstop=4
:set foldmethod=manual
" :set cursorline
:set clipboard=unnamed
:set re=0

call plug#begin('~/.config/nvim/plugged')

" Airline
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'https://github.com/preservim/nerdtree'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'https://github.com/ryanoasis/vim-devicons'
" Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/tpope/vim-surround'
" Plug 'https://github.com/preservim/tagbar'
Plug 'mhinz/vim-startify'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Plug 'romgrk/barbar.nvim'
Plug 'https://github.com/machakann/vim-highlightedyank'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/tpope/vim-fugitive'

" themes
Plug 'https://github.com/jamescherti/vim-tomorrow-night-seablue'
Plug 'overcache/NeoSolarized'

" Javascript Synataxes
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
" Godot Engine
Plug 'habamax/vim-godot'

set encoding=UTF-8
call plug#end()

" :colorscheme NeoSolarized
" :colorscheme default
:colorscheme tomorrow-night-seablue
:hi Normal guibg=NONE ctermbg=NONE
:hi LineNr ctermbg=NONE

" Airlines
let g:airline_theme='light'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#hunk#enabled = 0
let g:airline#extensions#branch#enabled = 1 

"Godot
let g:godot_executable = '/Applications/Godot.app'

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeShowHidden=1

nmap <F8> :TagbarToggle<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Move to previous/next
" map <A-PageUp> <Cmd>bnext<CR>
" map <A-PageDown> <Cmd>bprevious<CR>
nmap <PageUp> <Cmd>bnext<CR>
nmap <PageDown> <Cmd>bprevious<CR>

" Buffer delete that works well with vim panes
nnoremap <C-c> :bp\|bd #<CR>

