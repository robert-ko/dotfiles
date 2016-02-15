"" color section
syntax enable
colorscheme monokai
set hlsearch
hi Search guibg=Red
set laststatus=2     ""neeeded see airline
set nu
let g:airline#extensions#tabline#enabled = 1

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Enable folding
set foldmethod=indent
set foldlevel=99

"------------Start Python PEP 8 stuff----------------
"" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

"" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
" au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" " Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"
" " Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100
"
" " Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix
"
" " Set the default file encoding to UTF-8:
set encoding=utf-8
"
" " For full syntax highlighting:
let python_highlight_all=1
syntax on
"
" " Keep indentation level from previous line:
autocmd FileType python set autoindent


au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

Plugin 'vim-scripts/indentpython.vim'




" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

Plugin 'MarkdownFootnotes'

Plugin 'fatih/vim-go'

" Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/neocomplete.vim'

Plugin 'bling/vim-airline'
" Now we can turn our filetype functionality back on
filetype plugin indent on

