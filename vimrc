"=> VIM config file
colorscheme elflord

set tabstop=4
set autoindent
syntax enable
set ruler
set nowrap
set relativenumber

"Sets linenumbers and toggles relatve/absolute with C-n
function! NumberToggle()
	if(&relativenumber == 1)
		set number
	else
		set relativenumber
	endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

"Sets relative/absolute numbers based on focus
:au FocusLost * :set number
:au FocusGained * :set relativenumber

" append a semicolon
nnoremap <leader>; A;<Esc>
