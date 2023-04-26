let blvimColorScheme = 'blsyntax'

if !exists('g:blvimColorScheme')
	if filereadable(expand(BlvimColorDir('blsyntax')))
		let g:blvimColorScheme = 'blsyntax'
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

syntax on

set number
set nowrap
set wildmenu
set t_Co=256
"set termguicolors
set ruler
set incsearch
set confirm
set list
set listchars+=precedes:<,extends:>
set listchars+=tab:\>>\
set listchars+=eol:•
set cc=80
set tabstop=4
set shiftwidth=4
set ai
set laststatus=2
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{gitbranch#name()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ %l:%c
set statusline+=
"set cursorcolumn
"set cursorline

let g:startify_custom_header = [
        \"    .  .          ",
        \"    |_ |.  ,.._ _ ",
        \"    [_)| \\/ |[ | )",
        \"                  ",
        \"    blapco's Vim bundle.",
        \"                  ",
        \"    — https://blapco.xyz",
        \"    — https://git.blapco.xyz/blvim",]
