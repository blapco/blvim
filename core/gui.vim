if has('gui_running')
	set nowrap
	set ruler
	set wildmenu
	set incsearch
	set confirm
	set list
	set listchars=
	set listchars+=precedes:<,extends:>
	set listchars+=tab:\|\ 
	set sidescroll=5
	set scrolloff=5
	set cc=80
	set title
	colorscheme blsyntax
	syntax on
	set tabstop=4
	set shiftwidth=4
	set ai
	set guioptions-=m
	set guioptions-=T

	if !exists("g:blvimNoFont")
		if LINUX() && has("gui_running")
			execute 'set guifont=' . fnameescape(g:blvimFont . ' ') . g:blvimFontSize . ',Terminus\ 12,Noto\ Mono\ Regular\ 12,Menlo\ Regular\ 11,Consolas\ Regular\ 12,Courier\ New\ Regular\ 14'
		elseif OSX() && has("gui_running")
			execute 'set guifont=' . fnameescape(g:blvimFont) . ':h' . g:blvimFontSize . ',Menlo\ Regular:h11,Consolas\ Regular:h12,Courier\ New\ Regular:h14'
		elseif WINDOWS() && has("gui_running")
			execute 'set guifont=' . substitute(g:blvimFont, ' ', '_', 'g') . ':h' . g:blvimFontSize . ',Cascadia_Mono:h10,Consolas:h10,Courier_New:h10'
		endif
	endif
else
	if &term == 'xterm' || &term == 'screen' || &term == 'fbterm'
		set t_Co=256
	endif
endif

