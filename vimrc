set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" RUBY ON RAILS CONFIGS
" ##########################
Plugin 'scrooloose/nerdtree'
"Plugin 'tpope/vim-fugitive' " git managment
" Rails
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
" Commenting and uncommenting stuff
Plugin 'tomtom/tcomment_vim'
" Autogenerate pairs for "{[( )
Plugin 'jiangmiao/auto-pairs'
" Tab completions
Plugin 'ervandew/supertab'
" omnicompletion for rails
Plugin 'vim-ruby/vim-ruby'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
syntax on
colorscheme bubblegum
autocmd VimEnter * NERDTree

" omnicompletion for rails
if has("autocmd")
    autocmd FileType ruby set omnifunc=rubycomplete#Complete
    autocmd FileType ruby let g:rubycomplete_buffer_loading=1
    autocmd FileType ruby let g:rubycomplete_classes_in_global=1
endif

set smartindent
set tabstop=2
set sw=2
set expandtab
set t_Co=256
set number
set background=dark
