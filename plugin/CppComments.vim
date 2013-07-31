function! CppCommentDebugFunction()
	silent! %s/[\/]*\(acutPrintf(.*DEBUG>.*);\)/\/\/\1/
endfunction

function! CppUncommentDebugFunction()
	silent! %s/[\/]*\(acutPrintf(.*DEBUG>.*);\)/\1/
endfunction

function! CppDeleteDebugFunction()
	silent! g/acutPrintf(.*DEBUG>.*);/d
endfunction

function! CppDebugFunction(text)
:execute 'normal aacutPrintf(_T("\nDEBUG>'
:execute 'normal a' . a:text
:execute 'normal a"));'
endfunction

function! FindClassFunctionFunction(class)
	let searchStr = a:class . '::.*(.*)\_.*{\_.*}/'
	:execute "normal /" . searchStr
endfunction

function! CommentToBriefFunction()
	silent! s/\/\/\(.*\)$/\/\*\*\r\t\/brief\t\1\r\t\*\//
endfunction

command! CppCommentDebug call CppCommentDebugFunction()
command! CppUncommentDebug call CppUncommentDebugFunction()
command! CppDeleteDebug call CppDeleteDebugFunction()
command! -nargs=1 CppDebug call CppDebugFunction(<q-args>)
command! CommentToBrief call CommentToBriefFunction()
command! -nargs=1 FindClassFunction call FindClassFunctionFunction(<q-args>)
