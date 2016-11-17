:set autoindent
:set smartindent
:set cindent

set tabstop=4
set shiftwidth=4
set softtabstop=4

highlight LineNr ctermfg=black
highlight CursorLine ctermfg=Red
set number

hi MatchParen cterm=none ctermfg=red ctermbg=none

set mouse=a

"autoclosing things and just making bracket handling easier

inoremap ( ()<Esc>i
inoremap [ []<Esc>i

"setting up the indent if you press enter
inoremap {<CR> {<CR><BS>}<Esc>ko

"otherwise just do it normally
inoremap { {}<Esc>i
inoremap ) <c-r>=ClosePair(')')<CR> 
inoremap ] <c-r>=ClosePair(']')<CR> 
inoremap } <c-r>=ClosePair('}')<CR>
inoremap ' <c-r>=ClosePair("'")<CR>
inoremap " <c-r>=ClosePair('"')<CR>

function ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
	return "\<Right>"
	else
	return a:char
	endif
endfunction

imap <C-]> <Esc>
