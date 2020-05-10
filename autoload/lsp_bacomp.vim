function! lsp_bacomp#smart_command(...) abort
  if a:0 < 2
    echom 'Missing argument!'
  elseif a:0 > 3
    echom 'Too many arguments!'
  endif

  let l:arguments = ''

  for l:arg in a:000
    let l:arguments .= '"' . l:arg . '", '
  endfor

  call luaeval("require'lsp_bacomp'.smart_command(" . l:arguments[:-3] . ')')
endfunction
