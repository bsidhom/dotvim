call pathogen#infect()

if has('unix')
    let s:unix=1
    let s:vimdir=expand("$HOME/.vim")
else
    let s:unix=0
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
set shellslash
set backspace=indent,eol,start

" search options
set hlsearch
set incsearch

" use utf-8 encoding by default
set encoding=utf-8

" make Y behavior consistent with other capital motions
map Y y$

" set spell settings (:spell on still must be used to enable per-buffer)
set spelllang=en_us

" viminfo settings
" save marks for 10 files, 100 lines apiece, 50 lines of command history
set viminfo='10,\"100,:50

function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END

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

" haskellmode settings
if s:unix
    let g:haddock_browser = "firefox"
else
    let g:haddock_browser = ""
endif

" PLUGIN REPOSITORIES
" https://github.com/tpope/vim-pathogen.git
" https://github.com/scrooloose/nerdtree.git
" https://github.com/bsidhom/vim-latex-suite.git
" https://github.com/vim-scripts/guicolorscheme.vim.git
" https://github.com/altercation/vim-colors-solarized
" https://github.com/Lokaltog/vim-powerline.git
" https://github.com/jamessan/vim-gnupg.git
" https://github.com/sukima/xmledit.git
" https://github.com/mattn/emmet-vim.git
" https://github.com/guns/vim-clojure-static.git
" https://github.com/tpope/vim-classpath.git
" https://github.com/tpope/vim-foreplay.git
" https://github.com/sjas/haskellmode-vim.git
" https://github.com/JuliaLang/julia-vim.git
