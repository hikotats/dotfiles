
" augroup JavaScript
"   autocmd! JavaScript
"   autocmd Filetype javascript call s:javascript_filetype_setting()
" augroup END
"
" function! s:javascript_filetype_setting()
"   " バッファから移動したらjslintの警告を出す
"   autocmd BufLeave  <buffer> call jslint#clear()
"   " バッファを保存したらjslintのチェックを行う
"   autocmd BufWritePost  <buffer> call jslint#check()
"   " カーソル移動時にカーソル行に警告があればステータスラインに表示する
"   autocmd CursorMoved <buffer> call jslint#message()
" endfunction

