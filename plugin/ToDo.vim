function! TaskFunction()
	silent! s/^\(.*\)/[]\1\ /
endfunction

function! CompleteFunction()
	silent! s/^\[\]\(.*\)/[+]\1/
endfunction

function! UncompleteFunction()
	silent! s/^\[+\]\(.*\)/[]\1/
endfunction

command! Task call TaskFunction()
command! Complete call CompleteFunction()
command! Uncomplete call UncompleteFunction()
