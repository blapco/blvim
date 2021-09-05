" blsyntax — blvim's colorscheme.
" — Biel A. P.

hi clear
set background=dark

if exists("sytanx_on")
	syntax reset
endif

let g:colors_name = "blsyntax"

hi Comment  ctermfg=magenta guifg=magenta
hi NonText  guifg=grey
hi Constant ctermfg=197     guifg=#ff005f gui=bold cterm=bold
