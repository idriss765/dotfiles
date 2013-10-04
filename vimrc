set nocompatible
" This is a nicely-configured resource file for Vim (install the tarball from 'Solaris_extras/')
set showcmd
set showmatch
set incsearch
set ignorecase smartcase
runtime ftplugin/man.vim
let cpo_save=&cpo
set cpo=B
" autocmd FileType text setlocal tw=72 indentexpr=
" autocmd FileType mail setlocal tw=72 indentexpr=
autocmd FileType text setlocal tw=72 spell spelllang=en_us
autocmd FileType mail setlocal tw=72 nosmartindent nocindent
autocmd FileType perl setlocal ai kp=perldoc\ -f
autocmd FileType perl nmap K "zyiw<C-W>n:set buftype=nofile<CR>:r! perldoc -tf '<C-R>z'<CR>gg
autocmd FileType sh setlocal ai
autocmd FileType c setlocal kp=man\ 3
autocmd FileType c nmap K "zyiw<C-W>n:set buftype=nofile<CR>:r! man 3 '<C-R>z'<CR>gg
"
syntax enable
"
" Set Vim to look good on a black xterm
set background=dark
colorscheme solarized
"
" Enable Perltidy processing
map ,pt  <Esc>:%! perltidy<CR>
map ,ptv <Esc>:'<,'>! perltidy<CR>
"
map <silent> <F2> :set filetype=perl<CR>:set kp=perldoc\ -f<CR>:0<CR>:-r!which perl<CR>I#!<ESC>$a -w<CR># written onr!date<CR>-J^<CR>i<CR>
map <silent> <F3> :set filetype=sh<CR>:set kp=man<CR>:0<CR>:-r!which bash<CR>I#!<ESC>o# Created by Evan onr!date<CR>-J^<CR>i<CR>
" Dictionary lookup for word under cursor
map <F5> :w<CR>:![ -x "%:p" ]\|\|chmod +x "%:p"<CR>:!"%:p" 
"
" Toggle a comment hash at the beginning of the line
map <silent> <F9> :.!perl -wlne'/^(\s*)((?:\# ?)?)(.*)/;print $2?"$1$3":"$1\# $3"'<CR>
vmap <silent> <F9> :!perl -wlne'/^(\s*)((?:\# ?)?)(.*)/;print $2?"$1$3":"$1\# $3"'<CR>
"
let &cpo=cpo_save
unlet cpo_save
set noautoindent
set smartindent
set backupdir=~/backup,/tmp
set formatoptions=tcql
set history=50
" Don't redraw screen during macro execution
set lazyredraw
set ruler
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set textwidth=75
set viminfo='20,\"50
set tabstop=4
set shiftwidth=4
set report=1
set updatecount=50   " write swap file to disk after each 100 characters
set updatetime=6000  " write swap file to disk after 6 inactive seconds
set visualbell
"

