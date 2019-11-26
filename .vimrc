" Reminder: you can tell the current setting in vim with "set <commandname>?"

let mapleader = ","     " remap the <leader> key from \ for easier typing
set nocompatible		" Ensures vim is not in "compatibility" mode with vi
						" Redundant, since this is a vimrc apparently.

set tabstop=4			" The width of a TAB is set to 4.
						" Still it is a \t. It is just that
						" Vim will interpret it to be having
						" a width of 4.

set shiftwidth=4		" Indents will have a width of 4

set softtabstop=4		" Sets the number of columns for a TAB when editing

set t_Co=256			" 256 colors apparently
colorscheme jellybeans	" sets the colorscheme (this one lives in ~/.vim/colors )
syntax on				" turns syntax highlighting on

"set number				" turn line numbers on
set ruler				" show line, col, and percentage from top, in the corner
set showmatch			" highlight matching braces
set cursorline
set wildmenu			" shows a menu while letting vim do autocomplete for you
						"set wildmode=list:longest to look more like the shell
set incsearch			" search as characters are entered
set hlsearch			" highlight matches

"mapping commands, nnoremap = normal mode nonrecursive map
" <leader> is a default prefix character, '\' by default
nnoremap <leader><space> :nohlsearch<CR> " turn off search 

set showcmd				" shows the entered command on the screen

" folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=syntax   " fold based on syntax
nnoremap <space> za " space open/closes folds

" move vertically by visual line enable this to treat a wrapped line as two lines while moving
"nnoremap j gj
"nnoremap k gk

" changes the move to start, end of line command

" move to beginning/end of line
"nnoremap B ^
"nnoremap E $

" $/^ doesn't do anything
"nnoremap $ <nop>
"nnoremap ^ <nop>

"`[ means beginning of last changed/yanked text
"`] means end .....
nnoremap gV `[v`] " highlight last inserted text


" turns on some filetype specific stuff
" re-enable this once you determine you actually need it
" filetype plugin indent on	"equivalent to 
filetype on
filetype plugin on
filetype indent on
							"filetype on (redundant since "syntax on" enables this
							"filetype plugin on loads the plugin corresponding to this filetype 
							"filetype indent on allows for language dependent indenting
autocmd FileType python nnoremap <buffer> <F9> :exec '!clear; python' shellescape(@%, 1)<cr>
" run current python command with F9

					

"mappings to automatically insert matching braces, parens etc...
" inoremap ( ()<Left>
" inoremap [ []<Left>
" inoremap { {}<Left>



set history=1000						" beef up history from 20
runtime macros/matchit.vim		" make the bracket matching command % even more useful
set visualbell					" no more annoying audible bell
set scrolloff=3					" starts scrolling up when three lines from bottom
set listchars=eol:⏎,tab:├─,trail:␠,nbsp:⎵ " sets the chars that show when you do a set list to show non printing chars
