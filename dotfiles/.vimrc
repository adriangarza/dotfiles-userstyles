:set autoindent
:set smartindent
:set cindent

set tabstop=4
set shiftwidth=4
set softtabstop=4

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'rstacruz/vim-closer'
Plugin 'rstacruz/vim-hyperstyle'
Plugin 'tpope/vim-repeat'
Plugin 'jiangmiao/auto-pairs'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Put your non-Plugin stuff after this line

set mouse=a

" smart tabs: autocompletes if mid-word
function! SmartTab()
	if (strpart(getline('.'),col('.')-2,1)=~'^\W\?$')
		return "\<Tab>"
	else
		return "\<C-p>"
	endif
endfunction

imap <Tab> <C-R>=SmartTab()<CR>

"change split shortcuts
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>

"more natural openings
set splitbelow
set splitright

"change split normalization, this is actually shift+ctrl+- for the underscore
noremap <C-_> <C-W>=

set background=dark
:colorscheme gruvbox

"disable line wrap
:set nowrap

"don't destroy indents when pasting code
:set nopaste

"line numbers are nice
:set number

"airline stuff
let g:airline_powerline_fonts = 1
