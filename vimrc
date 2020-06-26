"Ova konfa je napravljena 14.12.2014 i relativno je ok

" ==========================================================
" Vundle - install packages
" ==========================================================
set nocompatible

"set rtp+=~/.config/nvim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

"windows ??
"set rtp+=~/vimfiles/bundle/Vundle.vim/
" call vundle#begin('~/vimfiles/')
 
" Colorscheme
Bundle 'junegunn/seoul256.vim'      
Bundle 'tomasr/molokai'

"---- Code nav ----
Plugin 'scrooloose/nerdtree'                " Project and file navigation
Plugin 'majutsushi/tagbar'                  " Class/module browser
Plugin 'kien/ctrlp.vim'                     " Fast transitions on project files

"---- Look and feel ----
Plugin 'bling/vim-airline'                  " Lean & mean status/tabline for vi
Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
"Plugin 'Lokaltog/powerline'                " Powerline fonts plugin

"Python
Plugin 'nvie/vim-flake8'
Bundle 'scrooloose/syntastic'               " runs files through external syntax checkers and displays any resulting errors to the user
Plugin 'Valloric/YouCompleteMe'             " fuzzy-search code completion engine f

"GIT
Bundle 'tpope/vim-fugitive'

"Latex
"Bundle 'jcf/vim-latex'
"Bundle 'xuhdev/vim-latex-live-preview'

call vundle#end()        

" ==========================================================
" Basic Settings
" ==========================================================
syntax on                     " syntax highlighing
filetype off                  " try to detect filetypes
"filetype plugin indent on     " enable loading indent file for filetype

let python_highlight_all=1

"Colorscheme 
let g:seoul256_background=236
colo seoul256

"colorscheme molokai config
"let g:molokai_original = 1
"let g:rehash256 = 1
"colo molokai

set cursorline
set ruler

set enc=utf-8	              " utf-8 by default
set nobackup 	              " no backup files
set nowritebackup             " only in case you don't want a backup file while editing
set noswapfile 	              " no swap files

set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
set background=dark           " We are using dark background in vim
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.
set showcmd
 
set colorcolumn=80
 
" don't bell or blink
"set noerrorbells
"set vb t_vb=
 
 
" don't outdent hashes
inoremap # #
 
 
set textwidth=79        " lines longer than 79 columns will be broken
set shiftwidth=4        " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4           " a hard TAB displays as 4 columns
set expandtab           " insert spaces when hitting TABs
set softtabstop=4       " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround          " round indent to multiple of 'shiftwidth'
set autoindent          " align the new line indent with the previous line
"set nofoldenable        "disable code folding
set foldmethod=indent
set foldlevel=99
set clipboard=unnamed   " use system clipboard
set nolazyredraw
set showmatch           "shows matching part of bracket pairs (), [], {}
set backspace=indent,eol,start

" Buffer changes shortcuts
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

if has('mouse')
  set mouse=v
endif

"=====================================================
" Syntastic config 
"=====================================================

"old syntastic config
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_auto_loc_list=1
"let g:syntastic_loc_list_height=5
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_loc_list_height=5
let g:syntastic_error_symbol='X'
let g:syntastic_style_error_symbol='X'
let g:syntastic_warning_symbol='x'
let g:syntastic_style_warning_symbol='x'

"=====================================================
"" TagBar settings
"=====================================================
let g:tagbar_autofocus=0
let g:tagbar_width=42
"autocmd BufEnter *.py :call tagbar#autoopen(0)
"autocmd BufWinLeave *.py :TagbarClose
nmap <F8> :TagbarToggle<CR>

set ls=2  "Always show status line"
nmap <F3> :NERDTreeToggle<CR>
"map  :NERDTreeToggle "F2 shortcut za NERDTree" 
 
"=====================================================
"" AirLine settings
"=====================================================
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_theme='wombat' "badwolf
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#formatter='unique_tail'

"=====================================================
" YouCompleteMe
"=====================================================
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_python_binary_path = '/usr/bin/python3'

nnoremap <leader>d :YcmCompleter GetDoc<CR>
nnoremap <leader>. <C-w>z
nnoremap <leader>cc :YcmCompleter
nnoremap <leader>cd :YcmCompleter GoTo<CR>
nnoremap <leader>cr :YcmCompleter GoToReferences<CR>

