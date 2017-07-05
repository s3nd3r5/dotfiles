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
Plugin 'flazz/vim-colorschemes'



" End of Plugins
call vundle#end()
filetype plugin indent on
set path+=**
colorscheme luna-term

