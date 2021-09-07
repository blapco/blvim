if !exists('g:blvimColorscheme')
	if filereadable(expand(blvimBundleDir("vim/colors/blsyntax")))
		let g:blvimColorScheme = "blsyntax"
	else
		silent !echo "blsyntax is not installed."
	endif
endif

execute 'color ' . g:blvimColorScheme

if !exists('g:blvimFont')
	if WINDOWS()
		let g:blvimFont = "Cascadia Mono"
	else
		let g:blvimFont = "Terminus"
	endif
endif

set number
set nowrap
set wildmenu
set t_Co=256

"set termguicolors -> enable this if you want the same colors of GUI on the
"terminal.

set ruler
set incsearch
set confirm
set list
set listchars
set listchars+=precedes:<,extends:>
set listchars+=tab:\|\
set cc
syntax on
set tabstop=4
set shiftwidth=4
set ai
