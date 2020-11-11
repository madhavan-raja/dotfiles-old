set nu
set rnu

syntax on

set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cindent

set backspace=indent,eol,start

set breakindent
set lbr!

set belloff=all
colorscheme torte
set guifont=Ubuntu_Mono:h16:cANSI:qDRAFT

filetype plugin on

map <F9> :!g++ % -std=c++14 -Wshadow -Wall && a.exe < input.txt
map <F10> :!pdflatex %
