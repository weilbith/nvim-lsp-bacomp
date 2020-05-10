if exists('g:loaded_lsp_bacomp')
  finish
endif

let g:loaded_lsp_bacomp = 1

command! -nargs=+ LspBacomp call lsp_bacomp#smart_command(<f-args>)
