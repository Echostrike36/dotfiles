"================================== VUNDLE ====================================
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" Required for Vundle
runtime! debian.vim
set nocompatible
filetype off

" Set the Runtime Path to Include Vundle and Initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

"================================== PLUGINS ===================================
" QuickRun - Execute whole/part of the buffer
Plugin 'thinca/vim-quickrun'

" Syntastic - Syntax checking plugin for VIM
Plugin 'vim-syntastic/syntastic'

" Paste Easy - Fixes Indentation issues when pasting into VIM
Plugin 'roxma/vim-paste-easy'

" Add more Plugins Here "

"================================== VUNDLE ====================================

" Vundle requires these lines after the last plugin
call vundle#end()
filetype plugin indent on

"=================================== VIM ======================================
" Line Numbers
set rnu

" Global Clipboard
"set clipboard=unnamedplus

" Underline Current Line
set cursorline

" Show Commands as they are input (bottom left corner)
set showcmd

" Enable Syntax Highlighting
syntax on

" Syntax
filetype indent plugin on

" Color
"colorscheme molokai

" Hightlight all matches of a search
set hlsearch

" Highlight the 80th column
highlight LineEdge ctermbg=Blue guibg=Blue
call matchadd('LineEdge', '\%80v',100)

" New Horizantal Splits appear on right
set splitright

" New Vertical splits appear at the bottom
set splitbelow

" Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Provide tab-completion for files by adding subdirectories to path.
set path+=**

" Display a tab-complete menu if more than one matching file.
set wildmenu

" These next 4 options will change tabs to spaces with a width of 4
" The width of a TAB is set to 4.
set tabstop=4
" Indents will have a width of 4
set shiftwidth=4
" Sets the number of columns for a TAB
set softtabstop=4
" Expand TABS to spaces
set expandtab

"================================ SYNTASTIC ===================================
" Use ShellCheck to check sh scripts 
let g:syntastic_sh_checkers = ['shellcheck']

" Use the -x argument with ShellCheck to bring in sourced files.
let g:syntastic_sh_shellcheck_args = "-x"

" Defaults Recommended By Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

