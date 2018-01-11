let g:pathogen_disabled = ["vim-pathogen"]
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
set colorcolumn=+1

" miscellaneous options
set number
set ruler
set modeline
set shellslash
set backspace=indent,eol,start
set laststatus=2
set wildmenu

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

" paredit interferes with Julia (.jl) files; this is a workable fix for now
let g:paredit_disable_lisp='1'

" markdown settings
let g:vim_markdown_folding_disabled = 1

" haskellmode settings
if s:unix
    let g:haddock_browser = "firefox"
else
    let g:haddock_browser = ""
endif

" airline settings
let g:airline_theme = "tomorrow"

" vim-signify settings
" Solarized does not properly set SignColumn. Since this is used by Sy to
" indicate unchanged lines, it should be cleared to play well with the rest of
" the colorscheme.
highlight clear SignColumn
let g:signify_vcs_list = ['git', 'hg']

" ctrlp settings
let g:ctrlp_working_path_mode = 0
