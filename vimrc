set encoding=utf-8

" Defining comma as our leader key
let mapleader = " "
"


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'kien/ctrlp.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'altercation/vim-colors-solarized'

Plugin 'scrooloose/syntastic'

Plugin 'bling/vim-airline'

Plugin 'mattn/emmet-vim'

Plugin 'mxw/vim-jsx.git'

Plugin 'heavenshell/vim-jsdoc.git'

Plugin 'mattn/webapi-vim'

" Plugin 'Valloric/YouCompleteMe'

Plugin 'gorodinskiy/vim-coloresque'

Plugin 'groenewege/vim-less'

Plugin 'hail2u/vim-css3-syntax'

Plugin 'iandoe/vim-osx-colorpicker'

" Requires 7.4 vim
" Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'easymotion/vim-easymotion'

" Plugin  'tpope/vim-surround'
" For some strange reasont hsi plugin seems to interfere with ciw / * and autocomplete

Plugin 'tpope/vim-repeat'

Plugin 'pangloss/vim-javascript'

Plugin 'Shougo/neocomplete.vim'

Plugin 'nikvdp/ejs-syntax'

Plugin 'rking/ag.vim'

Plugin 'lambdatoast/elm.vim'

Plugin 'isRuslan/vim-es6'



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

set number
set ruler

" For solarized plugin (color scheme)
" https://github.com/altercation/vim-colors-solarized
" http://blog.pangyanhan.com/posts/2013-12-13-vim-install-solarized-on-mac-os-x.html
syntax enable
set background=dark
colorscheme solarized

" Set folding , shift tab
" nnoremap <s-tab> za
" zR to expand
" set foldmethod=syntax
" set foldlevelstart=1

inoremap jk <ESC>
inoremap kj <ESC>
inoremap jj <ESC>

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" CTRL-P ignore:
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Disable bell for mac vim
set visualbell t_vb=

" Enable JSX inside normal JS:
let g:jsx_ext_required = 0

" Map :JsDoc to ,d
noremap <leader>c  :JsDoc<ENTER>

let g:jsdoc_allow_input_prompt = 1

" Make airline always show, even when single split screen
set laststatus=2

" Hard mode
" noremap h <NOP>
" noremap j <NOP>
" noremap k <NOP>
" noremap l <NOP>
 
" Getting off the arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Color Picker
let g:colorpicker_app = 'iTerm.app'

" Clipboard VIM
set clipboard=unnamed
" http://vimcasts.org/blog/2013/11/getting-vim-with-clipboard-support/

" Make backspace delete into prev lines
set backspace=2 " make backspace work like most other apps

" YouCompleteMe and UltiSnips compatibility, with the helper of supertab
" (via http://stackoverflow.com/a/22253548/1626737)
" let g:SuperTabDefaultCompletionType    = '<C-n>'
" let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

" Map the ,p to paste the contents of our clipboard
map <leader>p :set paste<ENTER>"+p<ENTER>:set nopaste<ENTER>

" TODO: tabs and blank spac showing in vim
" TODO: learn to use vim help. and how to print the workings of a file
" TODO: tmux
" TODO: irssi

" NOTES:
" f or t/T  , to repeat ;  or ,

" TO LEARN MOTION
" :help index

" No Warnings for hidden buffers
set hidden

" Disable autocomment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" set list
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Don't search with case unless specified.
set ignorecase
set smartcase
" Go to the search term right away without needing to press enter
set incsearch


" Nerd Treee:
map <leader>nt :NERDTreeToggle<CR>

" Turning on omincomplition improved!
let g:neocomplete#enable_at_startup = 1

let g:neocomplete#same_filetypes = {}
let g:neocomplete#same_filetypes._ = '_'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_jsx_checkers = ['eslint']
 
" Sets width of text to 72 cols for git commits
" set textwidth=72

" Highlight column 80
set colorcolumn=80
" Highlgith cursor row
set cursorline


let NERDTreeHijackNetrw=1


" Allow matching div tags
runtime macros/matchit.vim


colorscheme  elflord
