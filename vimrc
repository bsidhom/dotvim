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
set colorcolumn=81

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
if has('gui_running')
    set background=light
else
    if $TERMINAL_SOLARIZED != 1
        " terminal does not support native solarized colors
        let g:solarized_termcolors=256
    else
        " reveal terminal background if it supports solarized theme
        let g:solarized_termtrans=1
    endif
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
