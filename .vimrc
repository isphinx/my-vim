set rtp+=~/.config/nvim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'bling/vim-airline'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'vim-scripts/indentLine.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'fatih/vim-go'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'lilydjwg/colorizer'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'phildawes/racer'
NeoBundle 'racer-rust/vim-racer'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'vim-scripts/ag.vim'
NeoBundle 'chriskempson/tomorrow-theme'
NeoBundle 'xolox/vim-lua-ftplugin'
NeoBundle 'xolox/vim-misc'
NeoBundle 'tomasr/molokai'
NeoBundle 'freeo/vim-kalisi'
"NeoBundle 'terryma/vim-multiple-cursors'
"NeoBundle 'mattn/emmet-vim'
"NeoBundle 'cohama/agit'
call neobundle#end()

filetype plugin indent on
filetype plugin on

NeoBundleCheck

"set list lcs=tab:>-,trail:-
set nu
set cindent
set smartindent
set showmatch
set ignorecase smartcase
set nowrapscan
set incsearch
set magic
set sm
set cmdheight=1
set clipboard+=unnamedplus
set foldcolumn=2
set foldmethod=indent
set foldlevel=5
syntax on
colorscheme kalisi
set background=dark

set sw=4
set tabstop=4
set softtabstop=4
let mapleader=","

imap jk <esc>
map <silent> <leader>ss :source ~/.config/nvim/init.vim<cr>
map <silent> <leader>ee :e ~/.config/nvim/init.vim<cr>
map <leader>i :NERDTreeToggle <cr>
nmap <leader>h <c-w>h
nmap <leader>l <c-w>l
nmap <leader>j <c-w>j
nmap <leader>k <c-w>k
nmap <leader>H <c-w>H
nmap <leader>L <c-w>L
nmap <leader>J <c-w>J
nmap <leader>K <c-w>K
map  / <Plug>(easymotion-sn)
nmap s <Plug>(easymotion-s)
nmap <c-p><c-p> :CtrlPQuickfix<cr>
nmap <c-o><c-p> :CtrlPMRU<cr>
nmap <c-o><c-o> :CtrlPBuffer<cr>
nmap <leader>1 <Plug>AirlineSelectTab1<cr>
nmap <leader>2 <Plug>AirlineSelectTab2<cr>
nmap <leader>3 <Plug>AirlineSelectTab3<cr>
nmap <leader>4 <Plug>AirlineSelectTab4<cr>
nmap <leader>5 <Plug>AirlineSelectTab5<cr>
nmap <leader>6 <Plug>AirlineSelectTab6<cr>
nmap <leader>7 <Plug>AirlineSelectTab7<cr>
nmap <leader>8 <Plug>AirlineSelectTab8<cr>
nmap <leader>9 <Plug>AirlineSelectTab9<cr>

let g:EasyMotion_use_upper = 1
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

let NERDTreeIgnore=['.pyc$', '\~$']
let NERDTreeShowBookmarks=1
nnoremap <leader>gd :YcmCompleter GoTo<CR>

"syntastic{
let g:syntastic_python_checkers=['flake8']
let g:ycm_show_diagnostics_ui = 0
"let g:syntastic_aggregate_errors = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_style_error_symbol = "✗="
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_error_symbol = "⚠="
let g:syntastic_auto_jump = 0
"}

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_min_count = 2
"let g:airline_section_z = '%p%%'
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'

highlight  CursorLine ctermbg=Green ctermfg=None
autocmd InsertEnter * highlight  CursorLine ctermbg=blue ctermfg=Red
autocmd InsertLeave * highlight  CursorLine ctermbg=Green ctermfg=None

let g:UltiSnipsExpandTrigger="<c-j><c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1

set hidden
let g:racer_cmd = "/Users/lucas/.config/nvim/bundle/racer/target/release/racer"
let $RUST_SRC_PATH="/Users/lucas/code/rust/rust-master/src"
let g:rustfmt_command = '/Users/lucas/code/rust/rustfmt/target/release/rustfmt'
let g:lua_complete_omni = 1
let g:rustfmt_autosave = 1

if has('nvim')
	tnoremap jk <C-\><C-n>
endif
