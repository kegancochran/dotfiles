syntax on
set number relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
call plug#begin('~/.vim/plugged/')
	Plug 'preservim/nerdtree'
	Plug 'wellle/targets.vim' 
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-sensible'
call plug#end()
augroup journal
    autocmd!
    autocmd VimEnter */journal/**
        \ setlocal complete=k/Users/kegan/journal/**/*

    " populate daily journal template
    autocmd VimEnter ~/journal/daily/**
        \ 0r ~/journal/templates/daily.md

augroup end


