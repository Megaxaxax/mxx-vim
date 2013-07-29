function! CppCommentDebugFunction()
	silent! %s/acutPrintf(.*DEBUG>.*);/\/\/\0/
endfunction

function! CppUncommentDebugFunction()
	silent! %s/\/\/\(acutPrintf(.*DEBUG>.*);\)/\1/
endfunction

function! CppDebugFunction()
:execute 'normal IacutPrintf(_T("\nDEBUG>"));'
endfunction

command! CppCommentDebug call CppCommentDebugFunction()
command! CppUncommentDebug call CppUncommentDebugFunction()
command! CppDebug call CppDebugFunction()
