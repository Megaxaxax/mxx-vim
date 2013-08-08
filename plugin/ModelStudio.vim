let g:MSPath = "J:\\Model\ Studio\ 2013\\"
let g:ViperCS = g:MSPath . "ViperCS\\"
let g:ViperCSObj = g:MSPath . "ViperCSObj\\"

function! MS_ViperTracingDialogFilesFunction()
	:execute "tabe " . g:ViperCS . "acrxEntryPoint.cpp"
	:execute "normal /pipe_continue_pipeline/\<CR>"
	:execute "tabe " . g:ViperCS . "vCSCreateViper.cpp"
	:execute "vsplit " . g:ViperCS . "vCSCreateViper.h"
endfunction

" ��������� ����������� ������ ��� ������:
" ������ ���� ���������� ������������� ��� ������� �� ����
" ����������� ������������ � ������ ������ "���������� �������������"
command! MSViperTracingDialogFiles call MS_ViperTracingDialogFilesFunction()
