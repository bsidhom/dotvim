call pathogen#infect()

syntax on
filetype plugin indent on

colorscheme neverland-darker

" indent and expansion rules
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set textwidth=80

" miscellaneous options
set number
set modeline
set hlsearch
set incsearch
set shellslash

" make Y behavior consistent with other capital motions
map Y y$

" plguin-specific settings below
let g:Tex_DefaultTargetFormat='pdf'
let g:tex_flavor='latex'

" PLUGIN REPOSITORIES
" https://github.com/tpope/vim-pathogen.git
" https://github.com/bsidhom/vim-latex-suite.git
" https://github.com/vim-scripts/guicolorscheme.vim.git
" https://github.com/altercation/vim-colors-solarized
