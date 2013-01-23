" INSTRUCTIONS FOR COMPLETE FILE
" http://www.brankovukelic.com/post/2091037293/turn-vim-into-powerful-javascript-editor 
"
" if something doesn't work add 
set nocompatible

" Runtime Part manipulation of pathogen https://github.com/tpope/vim-pathogen
"execute pathogen#infect()
silent! call pathogen#infect()
silent! call pathogen#helptags()
set backspace=2

"filetype plugin indent on
autocmd vimenter * NERDTree
"
" "Map NERDTree to \p
nmap <silent> <Leader>p :NERDTreeToggle<CR> 
"Filetype
set filetype=on
filetype plugin on
filetype indent on

set ai
set ts=4
set sts=4
set et
set sw=4
set textwidth=79

" syntax on loaded based on a filetype
syntax on

" HTML (tab width 4 chr, no wrapping)
autocmd FileType html set sw=4
autocmd FileType html set ts=4
autocmd FileType html set sts=4
autocmd FileType html set textwidth=0
" XHTML (tab width 4 chr, no wrapping)
autocmd FileType xhtml set sw=4
autocmd FileType xhtml set ts=4
autocmd FileType xhtml set sts=4
autocmd FileType xhtml set textwidth=0
" CSS (tab width 4 chr, wrap at 79th char)
autocmd FileType css set sw=4
autocmd FileType css set ts=4
autocmd FileType css set sts=4

" Omnicopmpletion Python, JavaScript, HTML CSS
" Shortcuts for Omnicompletion:
" Ctrl+X, Ctrl+O: OmniComplete
" Ctrl+X, Ctrl+P: Complete keyword (any keyword in the file)
" Ctrl+X, Ctrl+L: Complete the line (based on the lines in the file)
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" JavaScript beautifier - start it with \\f

" Show line number
set number

" Higlight current line only in insert mode
autocmd InsertLeave * set nocursorline
autocmd InsertEnter * set cursorline

"Highlight cursor
highlight CursorLine ctermbg=8 cterm=NONE

" Incremental search
set incsearch

" my favorite color sheme
colorscheme bubblegum


