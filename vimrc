set nocompatible

" Send more characters for redraws
set ttyfast

" Enable mouse use in all modes
set mouse=a

" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2


call plug#begin()
let g:jsx_ext_required = 0
" Make sure you use single quotes

"Colorschemas
Plug 'morhetz/gruvbox'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline'
Plug 'Valloric/YouCompleteMe'
Plug 'ternjs/tern_for_vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'https://github.com/pangloss/vim-javascript.git'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Add plugins to &runtimepath
call plug#end()

let mapleader = ','
set number
set ruler
syntax on

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='simple'

colorscheme gruvbox
set background=dark

let g:user_emmet_settings = { 'javascript.jsx' : { 'extends' : 'jsx',  }, }
let g:ycm_autoclose_preview_window_after_insertion= 1

" Default Whitespace
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Wrapping text by default
set nowrap
set linebreak

" Searching and highlights
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <silent> <Space> :nohl<Bar>:echo<CR>

" Keep more content at the bottom of the buffer
set scrolloff=3

" Highlight cursor line
set cursorline

" Tab completion
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,assets/*,.idea/*

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Directories for swp files
set backupdir=~/dotvim/backups//
set directory=~/dotvim/backups//
set viewdir=~/dotvim/backups//

" Show (partial) command in the status line
set showcmd

set hidden

set history=1000

" ===================================================================
"                          MAPPINGS
" ===================================================================
" Better ESc
inoremap <C-F> <ESC>
inoremap <C-c> <ESC>
map <C-t> :NERDTreeToggle<CR>

"enable keyboard shortcuts
let g:tern_map_keys=1
""show argument hints
let g:tern_show_argument_hints='on_hold'

" =============================================================
"                     Vim Terminal
" =============================================================

" 256 colors for terminal vim
set t_Co=256
" Making cursor a bar in insert mode
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
