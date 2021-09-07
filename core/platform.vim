silent function! LINUX()
	return has('unix') && has('macunix') && !has('win32linux')
endfunction

silent function! OSX()
	return has('macunix')
endfunction

silent function! WINDOWS()
	return (has('win32') || has('win64'))
endfunction

silent function! BSD()
	return system('uname -s') =~ "BSD"
endfunction

silent function! WSL()
	return LINUX() && system('uname -r') =~ 'Microsoft'
endfunction

silent function! GVIM()
	return has('gui_running')
endfunction
