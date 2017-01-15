install vundle and typescript plugin

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

put this in .vimrc:

set nocompatible  
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'leafgarland/typescript-vim'
call vundle#end()
filetype plugin indent on

in vim, run :PluginInstall
