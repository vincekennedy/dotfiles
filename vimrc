"=> VIM config file

"Sets linenumbers and toggles relatve/absolute with C-n
set relativenumber

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
