" blvim windows compatibility.

if WINDOWS()
	set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/vim/after

	" CMD uses cp850 instead of utf-8. PowerShell uses utf-8.
	if has("multi_byte")
		set termencoding=cp850
		set encoding=utf-8
		setglobal fileencoding=utf-8
		set fileencodings=ucs-bom,utf-8,utf-16,cp1252,iso-8859-15
	endif
endif
