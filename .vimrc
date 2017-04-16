" ==== vimrc by rolevax ====

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
call plug#end()

set backspace=indent,eol,start
set history=100
set ruler
set showcmd	
set incsearch
set nu 
set tabstop=4
set shiftwidth=4
set noswapfile

if has('mouse')
  set mouse=a
endif

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" quick add new blank line
map <Enter> o<ESC>
map <S-Enter> O<ESC>

" 80-char overlength warning
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

