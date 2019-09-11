set nocompatible	" be iMproved, required
filetype off		" required

set encoding=utf-8
" Turn on syntax highlighting
syntax on

" Powerline config
set rtp+=/usr/local/home/bzhang/.local/lib/python3.6/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colors
set t_Co=256

" deoplete config:
let g:deoplete#enable_at_startup = 1

" Ale config:


" Tagbar config:
" R filetypes:
let g:tagbar_type_r = {
    \ 'ctagstype' : 'r',
    \ 'kinds'     : [
        \ 'f:Functions',
        \ 'g:GlobalVariables',
        \ 'v:FunctionVariables',
    \ ]
\ }

" CtrlP config:
" Change the default mapping and the default command to invoke CtrlP:
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" used for command line completion
set wildmenu
set wildmode=list:longest,full

" To insert space characters whenever the tab key is pressed
set expandtab
" To control the number of space characters that will be inserted
" when the tab key is pressed
set tabstop=4
" To change the number of space characters inserted for indentation
set shiftwidth=4

" Show line numbers
set number

" Enable folding
set foldmethod=indent
set foldlevel=99

"------------------------------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" YouCompleteMe: A code-completion engine for vim
Plugin 'ycm-core/YouCompleteMe'

" NERDtree
Plugin 'scrooloose/nerdtree'

" Ale: Check syntax in Vim asynchronously and fix files,
" with Language Server Protocol (LSP) support
Plugin 'dense-analysis/ale'

" deoplete: Dark powered asynchronous completion framework for newvim/vim8
Plugin 'Shougo/deoplete.nvim'
" nvim-yarp: Yet Another Remote Plugin Framework for Neovim
Plugin 'roxma/nvim-yarp'
" vim-hug-neovim-rpc: EXPERIMENTAL
Plugin 'roxma/vim-hug-neovim-rpc'

" Tagbar: A class outline viewer for vim
Plugin 'majutsushi/tagbar'

" CtrlP: Full path fuzzy file, buffer, mru, tag, etc finder for vim
Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required
"-----------------------------------------------------

" Shortcuts
map <F2> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR>
