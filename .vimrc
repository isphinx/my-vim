if !exists(":DiffOrig")
	command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis
endif

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/indentLine.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'mileszs/ack.vim'
Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'
Plugin 'lilydjwg/colorizer'
Plugin 'cohama/agit'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
call vundle#end()
filetype plugin indent on
filetype plugin on

"set list lcs=tab:>-,trail:-

call pathogen#infect()
call pathogen#helptags()

let g:NERDTreeQuitOnOpen = 1
let NERDTreeIgnore=['.pyc$', '\~$']
nnoremap <leader>jd :YcmCompleter GoTo<CR>

"syntastic{
execute pathogen#infect()
let g:syntastic_python_checkers=['flake8']
let g:ycm_show_diagnostics_ui = 0
"let g:syntastic_aggregate_errors = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_style_error_symbol = "✗="
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_error_symbol = "⚠="
let g:syntastic_auto_jump = 0
"}


set nu
set cindent
set smartindent
set showmatch
set ignorecase smartcase
set nowrapscan
set incsearch
set hlsearch
set magic
set sm
set backspace=indent,eol,start
set cmdheight=1
set mouse=a
set nocompatible
set laststatus=2
set autoread
set cursorline
"set foldcolumn=2
"set foldmethod=indent
"set foldlevel=5
syntax on
colorscheme badwolf

set sw=4
set tabstop=4
set softtabstop=4

imap jk <esc>
map <silent> <leader>ss :source ~/.vimrc<cr>
map <silent> <leader>ee :e ~/.vimrc<cr>
map <leader>i :NERDTreeToggle <cr>
nmap <leader>w <c-w>

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
nmap s <Plug>(easymotion-s)
omap t <Plug>(easymotion-bd-tl)
let g:EasyMotion_use_upper = 1
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

nmap <c-p><c-p> :CtrlPQuickfix<cr>
nmap <c-o><c-p> :CtrlPMRU<cr>
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
	\ }

let g:vimgdb_debug_file = ""
run macros/gdb_mappings.vim
map <F2> :run macros/gdb_mappings.vim<CR>
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_min_count = 2
nmap <leader>1 <Plug>AirlineSelectTab1<cr>
nmap <leader>2 <Plug>AirlineSelectTab2<cr>
nmap <leader>3 <Plug>AirlineSelectTab3<cr>
nmap <leader>4 <Plug>AirlineSelectTab4<cr>
nmap <leader>5 <Plug>AirlineSelectTab5<cr>
nmap <leader>6 <Plug>AirlineSelectTab6<cr>
nmap <leader>7 <Plug>AirlineSelectTab7<cr>
nmap <leader>8 <Plug>AirlineSelectTab8<cr>
nmap <leader>9 <Plug>AirlineSelectTab9<cr>
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

" Enable CursorLine
set cursorline

highlight  CursorLine ctermbg=Green ctermfg=None
autocmd InsertEnter * highlight  CursorLine ctermbg=blue ctermfg=Red
autocmd InsertLeave * highlight  CursorLine ctermbg=Green ctermfg=None

let g:UltiSnipsExpandTrigger="<c-j><c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
