"=> VIM config file
"colorscheme elflord

set tabstop=2
set autoindent
set ruler
set nowrap
set number
set clipboard=unnamedplus
syntax enable

"Sets linenumbers and toggles relatve/absolute with C-n
function! NumberToggle()
	if(&relativenumber == 1)
		set number
	else
		set relativenumber
	endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
