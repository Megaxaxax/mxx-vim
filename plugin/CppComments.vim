function! CppCommentDebugFunction()
	silent! %s/acutPrintf(.*DEBUG>.*);/\/\/\0/
endfunction

function! CppUncommentDebugFunction()
	silent! %s/\/\/\(acutPrintf(.*DEBUG>.*);\)/\1/
endfunction

function! CppDebugFunction(text)
:execute 'normal aacutPrintf(_T("\nDEBUG>'
:execute 'normal a' . a:text
:execute 'normal a"));'
endfunction

command! CppCommentDebug call CppCommentDebugFunction()
command! CppUncommentDebug call CppUncommentDebugFunction()
command! -nargs=1 CppDebug call CppDebugFunction(<q-args>)

