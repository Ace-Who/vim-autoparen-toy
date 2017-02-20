inoremap ( (<Esc>:call AutoParen(nr2char(getchar()))<CR>

function! AutoParen(char)
	call feedkeys('a', a:char, 'n')
	if a:char != ')'
		call feedkeys(")\<Esc>i", 'n')
	endif
endfunction
