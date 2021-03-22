" Plugins

	call plug#begin('~/.vim/plugged/')
		Plug 'preservim/nerdtree'
		Plug 'wellle/targets.vim' 
		Plug 'tpope/vim-surround'
		Plug 'arcticicestudio/nord-vim'
		Plug 'tpope/vim-sensible'
	call plug#end()

" Options

	" Enable syntax
		syntax on

	" Set colorscheme
		colorscheme nord

	" Set line numbers
		set number relativenumber

	" Set tab width
		set ts=4 sw=4

	" Set folding options
		set foldmethod=indent   
		set foldnestmax=10
		set nofoldenable
		set foldlevel=24

" Templates
		if has("autocmd")
			augroup journal
				" Daily Check-Ins
					autocmd BufNewFile ~/journal/daily/*.md 
					\ 0r ~/journal/templates/daily.md
				" Weekly Review
					autocmd BufNewFile ~/journal/weekly/*.md 
					\ 0r ~/journal/templates/weekly.md
				" Set autocomplete range
					autocmd VimEnter */journal/**
					\ setlocal complete=k/Users/kegan/journal/**/*
			augroup END
		endif

" Hotkeys
	" Insert timestamp at beginning of file
		nmap <F3> ggO<Esc>0Di[<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>]<CR><Esc>
