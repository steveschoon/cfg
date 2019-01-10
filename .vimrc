" Colors
colorscheme badwolf
syntax enable

" tabs
set tabstop=4		" tab=4 spaces
set softtabstop=4	" how tabs work in insert mode
set shiftwidth=4	" match ts for < and > reindenting
set noexpandtab		" don't insert spaces for TAB

" UI config
set cursorline		" highlight current line
set number			" show line numbers
set showmatch       " highlight matching [{()}]
set laststatus=2

" Searching
set incsearch		" search as chars are entered
set hlsearch		" highlight matches

" init pathogen to autoload plugins under ~/.vim/bundle
execute pathogen#infect()

" open ranger when vim open a dir
let g:ranger_replace_netrw=1

" nicer tab headers from airline
let g:airline#extensions#tabline#enabled=1

" Leader Shortcuts
let mapleader=","	" leader is comma

	" normal mode
	nmap <leader>h :noh<CR>									" clear search highlight
	nmap <leader>v :sp $MYVIMRC<CR>							" edit .vimrc
	nmap <F3> i<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>

	" insert mode
	inoremap jk <esc>	" type jk for ESC )
	imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

	" copy past to system clipboard
	vmap <leader>c "*y		
	nmap <leader>p "*p		

" Backup settings
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" autocommands
if has("autocmd")
	" reload .vimrc after saving it
	autocmd bufwritepost .vimrc source $MYVIMRC
endif


