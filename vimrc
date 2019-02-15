"Ova konfa je napravljena 14.12.2014 i relativno je ok

" Vundle
set nocompatible
filetype off
"filetype plugin indent on       " required

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
"Plugin 'Lokaltog/powerline'                 " Powerline fonts plugin

"Python
"Bundle 'klen/python-mode'
Bundle 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

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
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype

let python_highlight_all=1

"colorscheme seoul256 config
let g:seoul256_background=236
colo seoul256

"colorscheme molokai config
"let g:molokai_original = 1
"let g:rehash256 = 1
"colo molokai

set cursorline
"set ruler

set enc=utf-8	                            " utf-8 by default
set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files


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
set nofoldenable        "disable foldanja python koda
set clipboard=unnamed   " use system clipboard
set nolazyredraw
set showmatch        "shows matching part of bracket pairs (), [], {}
set backspace=indent,eol,start



"old syntastic config
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_auto_loc_list=1
"let g:syntastic_loc_list_height=5
" syntastic
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
autocmd BufEnter *.py :call tagbar#autoopen(0)
autocmd BufWinLeave *.py :TagbarClose
nmap <F8> :TagbarToggle<CR>

set ls=2  "Always show status line"
nmap <F3> :NERDTreeToggle<CR>
"map  :NERDTreeToggle "F2 shortcut za NERDTree" 
 
"set ruler
 
"set hidden
 
 
"=====================================================
"" AirLine settings
"=====================================================
let g:airline_theme='wombat' "badwolf
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
"let g:airline_powerline_fonts=1


"=====================================================
"" Python settings
"=====================================================

" python executables for different plugins

let g:pymode_python='python'
let g:syntastic_python_python_exec='python'

" rope
"let g:pymode_rope=0
"let g:pymode_rope_completion=0
"let g:pymode_rope_complete_on_dot=0
"let g:pymode_rope_auto_project=0
"let g:pymode_rope_enable_autoimport=0
"let g:pymode_rope_autoimport_generate=0
"let g:pymode_rope_guess_project=0

" documentation
let g:pymode_doc=0
let g:pymode_doc_bind='K'

" lints
let g:pymode_lint=0

" virtualenv
let g:pymode_virtualenv=1

" breakpoints
"let g:pymode_breakpoint=1
"let g:pymode_breakpoint_key='<leader>b'

" syntax highlight
"let g:pymode_syntax=1
"let g:pymode_syntax_slow_sync=1
"let g:pymode_syntax_all=1
"let g:pymode_syntax_print_as_function=g:pymode_syntax_all
"let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
"let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
"let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
"let g:pymode_syntax_highlight_self=g:pymode_syntax_all
"let g:pymode_syntax_indent_errors=g:pymode_syntax_all
"let g:pymode_syntax_string_formatting=g:pymode_syntax_all
"let g:pymode_syntax_space_errors=g:pymode_syntax_all
"let g:pymode_syntax_string_format=g:pymode_syntax_all
"let g:pymode_syntax_string_templates=g:pymode_syntax_all
"let g:pymode_syntax_doctests=g:pymode_syntax_all
"let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
"let g:pymode_syntax_builtin_types=g:pymode_syntax_all
"let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
"let g:pymode_syntax_docstrings=g:pymode_syntax_all

" highlight 'long' lines (>= 80 symbols) in python files
"augroup vimrc_autocmds
"    autocmd!
"    autocmd FileType python,rst,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
"    autocmd FileType python,rst,c,cpp match Excess /\%81v.*/
"    autocmd FileType python,rst,c,cpp set nowrap
"    autocmd FileType python,rst,c,cpp set colorcolumn=80
"augroup END
"
" code folding
"let g:pymode_folding=0

" pep8 indents
"let g:pymode_indent=1

" code running
"let g:pymode_run=1
"let g:pymode_run_bind='<F5>'


" old pymode config
"let g:pymode_lint=1
"let g:pymode_lint_checker="pyflakes,pep8"
"let g:pymode_lint_write=1
"let g:pymode_syntax=1
"let g:pymode_syntax_all=1
"let g:pymode_syntax_indent_errors=g:pymode_syntax_all
"let g:pymode_syntax_space_errors=g:pymode_syntax_all
"let g:pymode_doc=0 "iskljucimo pymode dokumentaciju koristimo onu od jedija
"let g:pymode_doc_key="K"
"let g:pymode_lint_unmodified = 0
"let g:pymode_rope=0 "Iskljucimo rope, tako da koristimo jedi-vim

"autocmd FileType python setlocal completeopt-=preview "iskljucuje dosadni docstring kada pisemo naredbu
"let g:jedi#documentation_command = "K"

"precice za mijenjanje buffera
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

if has('mouse')
  set mouse=v
endif

call vundle#end()               " required
