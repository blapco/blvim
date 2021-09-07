function! RemoveWhitespace()
	let lastSearch = @/
	let ln = line(".")
	let cl = col(".")
	%s/\s\+$//e
	let @/ = lastSearch
	call cursor(ln, cl)
endfunction

function! DosToUnix()
	execute 'update | e ++ff=dos | setlocal ff=unix'
	silent %s/\r//ge
	execute 'w'
endfunction

function! UnixToDos()
	execute 'update | e ++ff=dos | w'
endfunction

function! BlvimBundleDir (bundleName)
	return $blvimRoot . "/bundle/" . a:bundleName
endfunction

function! BlvimColorDir (colorName)
	return $blvimRoot . "/colors/" . a:colorName
endfunction

function! SourceConfigs (dir)
	let fileList = split(globpath(a:dir, '*.vim'), '\n')
	for vimConf in fileList
		execute 'source' vimConf
	endfor
endfunction
