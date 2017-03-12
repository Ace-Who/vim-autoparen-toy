inoremap ( (<Esc>:call autoparen#do()<CR>

function! autoparen#do()
  let l:char = nr2char(getchar())
  call feedkeys('a'. l:char, 'n')
  if l:char != ')'
    call feedkeys(")\<Esc>i", 'n')
  endif
endfunction
