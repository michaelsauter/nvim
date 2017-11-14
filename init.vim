"""""""""
" neovim defaults - see https://neovim.io/doc/user/vim_diff.html#vim-differences
syntax on
filetype plugin indent on
set autoindent
set autoread
set backspace=indent,eol,start
" backupdir is omitted
set belloff=all
set complete=.,w,b,u,t
" directory is omitted
set display=lastline
set formatoptions=tcqj
set history=10000
set hlsearch
set incsearch
set langnoremap
" langremap is omitted
set laststatus=2
set listchars="tab:> ,trail:-,nbsp:+"
set nocompatible
set nrformats=bin,hex
set ruler
set sessionoptions=blank,buffers,curdir,folds,help,tabpages,winsize
set showcmd
set smarttab
set tabpagemax=50
set tags=./tags;,tags
set ttyfast
" undodir is omitted
set viminfo="!,'100,<50,s10,h"
set wildmenu


"""""""""
" display
" color scheme
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" vertical split color
autocmd ColorScheme * highlight VertSplit ctermfg=235 ctermbg=235 cterm=NONE

" status line color
autocmd ColorScheme * highlight StatusLine ctermfg=250 ctermbg=238 cterm=NONE
autocmd ColorScheme * highlight StatusLineNC ctermfg=black ctermbg=235 cterm=NONE


" highlight current cursor line, with a notch after column 80
set cursorline
set colorcolumn=81

" show line numbers
set number

" I = skip intro message on startup
" F = skip file info prompt when opening file
set shortmess=IF

" display invisible characters as per 'listchars' option
set list


""""""""""
" keyboard

" change <Leader> from default '\' to home-row-friendly ';'
let mapleader = ";"


"""""""
" mouse

" scrolling etc in console.
" a = normal + visual + insert + command-line + help files
set mouse=a


""""""""""
" behavior

" indent with two spaces by default
set expandtab
set tabstop=2
set softtabstop=0 " disable
set shiftwidth=0 " when zero, the tabstop value is used

" use clipboard for all operations, without explicit +/* registers.
set clipboard+=unnamedplus

" keep hidden/background buffers; allow unsaved changes etc.
set hidden

" lines to keep above/below cursor when scrolling
set scrolloff=3

" show effect of command incrementally; :%s/foo/bar/g etc
"nosplit": shows the effects of a command incrementally, as you type.
"split"  : also shows partial off-screen results in a preview window.
set inccommand=split

" No ~backup and .swp files
set nobackup
set nowritebackup
set noswapfile


""""""""""""
" file types

" assume shell scripts as bash; fixes $(subcommand) syntax highlighting.
" https://github.com/neovim/neovim/blob/253f6f3b/runtime/syntax/sh.vim#L16
let g:is_bash=1


"""""""""
" plugins

" ctrlp.vim
" when opening multiple files, prompt for tab/split/etc.
let g:ctrlp_arg_map = 1
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 25
let g:ctrlp_show_hidden = 1
" ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_working_path_mode = ''

" vim-go
if executable("goimports")
  let g:go_fmt_command = "goimports"
endif