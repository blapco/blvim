" blsyntax — blvim's colorscheme.
" — Biel A. P.

hi clear
set background=dark

if exists("sytanx_on")
	syntax reset
endif

let g:colors_name = "blsyntax"

hi Normal    ctermfg=15      guifg=#ffffff   guibg=#000000
hi Comment   ctermfg=13      guifg=#ff00ff
hi NonText                   guifg=#808080
hi Constant  ctermfg=197     guifg=#ff005f                           gui=bold        cterm=bold
hi String    ctermfg=14      guifg=#00ffff                           gui=italic      cterm=italic
hi Statement ctermfg=11      guifg=#ffff00                           gui=bold        cterm=bold
hi Todo      ctermfg=8       guifg=#808080   guibg=#111111 ctermbg=9 gui=bold,italic cterm=bold,italic
hi Function  ctermfg=10      guifg=#008000                           gui=bold        cterm=bold
hi LineNr    ctermfg=7       guifg=#111111                           gui=bold        cterm=bold
