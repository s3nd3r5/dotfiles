set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable
set number

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'

" Other Plugins

Plugin 'rust-lang/rust.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'flazz/vim-colorschemes'
Plugin 'fatih/vim-go'


" End of Plugins
call vundle#end()
filetype plugin indent on
set path+=**
colorscheme luna-term

let g:rustfmt_autosave = 1
