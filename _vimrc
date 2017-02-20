inoremap ( (<Esc>:call AutoParen()<CR>

function! AutoParen()
  let l:char = nr2char(getchar())
	call feedkeys('a'. l:char, 'n')
	if l:char != ')'
		call feedkeys(")\<Esc>i", 'n')
	endif
endfunction
