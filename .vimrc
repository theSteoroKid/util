set nocompatible
filetype off

set rtp+=~/.set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'sjl/badwolf'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme badwolf
syntax enable

"spacing and tabs
set autoindent
set tabstop=2      "number of spaces visible per TAB
set softtabstop=2   "number of actual spaces
set shiftwidth=2    "width of shift
set expandtab       "tabs are spaces
set number          "show line numbers

set showcmd         "show command in bottom bar

"search comands and interaction
set incsearch       "search as characters are entered
set hlsearch        "highlight search matches
set wildmenu        "visual autocomplete for command menu

"set text wrapping and formating
"set textwidth=72        "wrap width
"set formatoptions=cqt   "automatic wrapping according to tw
"set wrapmargin=0        "buffer according to terminal size
"keyboard strokes
"gq: formatting operation (ie. rewrap text)
"vip: v for visual mode, then ip selects inner paragraph
"vap: equivalent to 'vip' and selects whole paragraph

"leader is ',' or '\'
let mapleader=" "


"movement commands and interaction

"vv turn off search highlight vv
nnoremap <space><space> :nohlsearch<CR>
"move vertically by visual line
nnoremap j gj
nnoremap k gk
"move to the Beginning/End of line
nnoremap B ^
nnoremap E $
"$/^ no longer does anything
nnoremap $ <nop>
nnoremap ^ <nop>

"more crazy additions

"highlight the last inserted text
nnoremap gV `[v`]   
"jk is escape
inoremap jk <esc>
" toggle grundo ',u' is super undo
nnoremap <leader>u :GrundoToggle<CR>

" YEE
