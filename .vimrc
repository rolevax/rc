set nocompatible
syntax enable

filetype plugin on
filetype indent on

" self -----------------------------------------------------------------
set nu
set showcmd
set incsearch
set hlsearch
set showmatch
set nowrap

set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
set cindent
set backspace=indent,eol,start

"--------------------------vundle begin ----------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'garyburd/go-explorer'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
call vundle#end()
"--------------------------vundle end ----------------------------------------


"--------------------------neo-snippet begin ----------------------------------------
"" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif
"--------------------------neo-snippet end ----------------------------------------

autocmd BufWritePre *.go :GoFmt

let g:neocomplete#enable_at_startup = 1
let g:molokai_original = 1
let g:rehash256 = 1
"autocmd VimEnter * nested :call tagbar#autoopen(1)
nmap <F8> :TagbarToggle<CR>
set runtimepath^=~/.vim/bundle/ctrlp.vim

"--------------------------nerdtree start ----------------------------------------
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd vimenter * NERDTree
map <F7> :NERDTreeToggle<CR>
"--------------------------nerdtree end ----------------------------------------
"
"--------------------------vim-go start ----------------------------------------
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>re <Plug>(go-referrers)
au FileType go nmap <Leader>im <Plug>(go-imports)
"--------------------------vim-go end ----------------------------------------
let g:ctrlp_working_path_mode = 'w'
nnoremap <F5> "=strftime("%F")<CR>gP
inoremap <F5> <C-R>=strftime("%F")<CR>

""" ================    GFP    ================
set nu 
set tabstop=4
set shiftwidth=4
set noswapfile
set mouse=a

" quick add new blank line
"map <Enter> o<ESC>
"map <S-Enter> O<ESC>


""" ============   $ End of GFP    ============

