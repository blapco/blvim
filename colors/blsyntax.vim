" blsyntax — blvim's colorscheme.
" — Biel Polastrini.

" Don't forget to enable 256 colors in your terminal.

hi clear
set background=dark

if exists("sytanx_on")
	syntax reset
endif

let g:colors_name = "blsyntax"

hi Normal    ctermfg=15    guifg=#ffffff guibg=#000000
hi Comment   ctermfg=7     guifg=#c0c0c0
hi NonText                 guifg=#808080
hi Constant  ctermfg=210   guifg=#ff8787                           gui=bold        cterm=bold
hi String    ctermfg=251   guifg=#c6c6c6
hi Statement ctermfg=197   guifg=#ff005f                           gui=bold        cterm=bold
hi Todo      ctermfg=15    guifg=#ffffff guibg=#ff5faf ctermbg=205 gui=bold,italic cterm=bold
hi Function  ctermfg=203   guifg=#ff5f5f                           gui=bold        cterm=bold
hi LineNr    ctermfg=7     guifg=#c0c0c0                           gui=bold        cterm=bold
hi Keyword   ctermfg=212   guifg=#ff87d7                           gui=bold        cterm=bold
hi PreProc   ctermfg=177   guifg=#d787ff
hi Type      ctermfg=218   guifg=#ffafd7                           gui=bold        cterm=bold
hi Special   ctermfg=48    guifg=#00ff87
hi Identifier ctermfg=216  guifg=#ffaf87
hi CursorLine   cterm=NONE ctermbg=17
hi CursorLineNr cterm=bold ctermfg=grey
hi CursorColumn ctermbg=17
hi TabGroup  ctermfg=grey

match TabGroup /\t/
