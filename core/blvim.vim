source $blvimRoot/core/platform.vim
source $blvimRoot/core/win.vim
source $blvimRoot/core/shell.vim
source $blvimRoot/core/blfuncs.vim

if filereadable(expand("~/.blvim.vimrc"))
	source ~/blvim.vimrc
endif

if filereadable(expand($blvimRoot . "/plugins/plugins.vim"))
	source $blvimRoot/plugins/plugins.vim
endif

source $blvimRoot/core/general.vim
source $blvimRoot/core/ui.vim
source $blvimRoot/core/gui.vim
source $blvimRoot/plugins/config.vim
