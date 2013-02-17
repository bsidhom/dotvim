call pathogen#infect()

if has('unix')
    let s:vimdir=expand("$HOME/.vim")
else
    let s:vimdir=expand("$USERPROFILE/vimfiles")
endif

syntax on
filetype plugin indent on

" indent and expansion rules
set smartindent
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

" set spell settings (:spell on still must be used to enable per-buffer)
set spelllang=en_us

" filetype associations
autocmd BufRead,BufNewFile *.gradle set filetype=groovy

" colorscheme settings
if $TERMINAL_SOLARIZED != 1
    let g:solarized_termcolors=256
endif
if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized

" latex suite settings
let g:Tex_DefaultTargetFormat='pdf'
let g:tex_flavor='latex'

" PLUGIN REPOSITORIES
" https://github.com/tpope/vim-pathogen.git
" https://github.com/bsidhom/vim-latex-suite.git
" https://github.com/vim-scripts/guicolorscheme.vim.git
" https://github.com/altercation/vim-colors-solarized
" https://github.com/Lokaltog/vim-powerline.git
" https://github.com/jamessan/vim-gnupg.git
" https://github.com/sukima/xmledit.git
" https://github.com/guns/vim-clojure-static.git
" https://github.com/tpope/vim-classpath.git
" https://github.com/tpope/vim-foreplay.git
