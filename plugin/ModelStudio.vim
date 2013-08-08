let g:MSPath = "J:\\Model\ Studio\ 2013\\"
let g:ViperCS = g:MSPath . "ViperCS\\"
let g:ViperCSObj = g:MSPath . "ViperCSObj\\"
let g:ParametricEntPallete = g:MSPath . "ParametricEntPalette\\"
let g:UnitsCS = g:MSPath . "UnitsCS\\"

function! MS_ViperTracingDialogFilesFunction()
	:execute "tabe " . g:ViperCS . "acrxEntryPoint.cpp"
	:execute "normal /pipe_continue_pipeline/\<CR>"
	:execute "tabe " . g:ViperCS . "vCSCreateViper.cpp"
	:execute "vsplit " . g:ViperCS . "vCSCreateViper.h"
	:execute "tabe " . g:ViperCS . "vCSTracingPaletteSet.cpp"
	:execute "vsplit " . g:ViperCS . "vCSTracingPaletteSet.h"
endfunction

function! MS_ViperMSTracerJigFunction()
	:execute "tabe " . g:ViperCS . "acrxEntryPoint.cpp"
	:execute "normal /vCSViperCSpipe_createPath/\<CR>"

	:execute "tabe " . g:ParametricEntPallete . "MSTracerJig.cpp"
	:execute "vsplit " . g:ParametricEntPallete . "MSTracerJig.h"

	:execute "tabe " . g:UnitsCS . "msTracerBox.cpp"
	:execute "vsplit " . g:UnitsCS . "msTracerBox.h"

	:execute "tabe " . g:ParametricEntPallete . "LayoutUtils.cpp"
	:execute "normal /getMSTracerBoxPath/\<CR>"
	:execute "vsplit " . g:ParametricEntPallete . "LayoutUtils.h"
	:execute "normal /getMSTracerBoxPath/\<CR>"

	:execute "tabe " . g:ViperCSObj . "vCSCreatePipe.cpp"
	:execute "vsplit " . g:ViperCSObj . "vCSCreatePipe.h"
endfunction

function! MS_PipeCopyFunction()
	:execute "tabe " . g:ViperCS . "acrxEntryPoint.cpp"
	:execute "normal /vCSViperCSpipe_xcopy/\<CR>"

	:execute "tabe " . g:ViperCSObj . "vCSPipeCopy.cpp"
	:execute "vsplit " . g:ViperCSObj . "vCSPipeCopy.h"
endfunction

" ��������� ����������� ������ ��� ������:
" ������ ���� ���������� ������������� ��� ������� �� ����
" ����������� ������������ � ������ ������ "���������� �������������"
command! MSViperTracingDialogFiles call MS_ViperTracingDialogFilesFunction()
" ��������� ����������� ������ ��� ������� AutoCAD
" ��������� ������������ �� ���� ������ � �������� �����
command! MSTracerJigFiles call MS_ViperMSTracerJigFunction()
" ��������� ����������� ������ ��� ������� AutoCAD
" ����������� ������������ � ������ ����
command! MSPipeCopy call MS_PipeCopyFunction()
