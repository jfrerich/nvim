" Enable Mouse
set mouse=a

set number

cnoremap <D-V> <c-r>+
tnoremap <D-V> <c-\><c-n>"+pi
nnoremap <D-V> <c-\><c-n>"+p

" set guifont=HackNerdFontComplete-Regular:h14
" set guifont=HackNerdFont:h14
GuiFont 'Hack\ Nerd\ Font:h14'
" Set Editor Font
if exists(':GuiFont')
    " Use GuiFont! to ignore font errors
    " GuiFont {font_name}:h{size}
    " GuiFont 'Hack\ Nerd\ Font:h14'
    " GuiFont 'Menlo-Regular:h11'
    " GuiFont "HackNerdFontComplete-Regular:h14"
endif

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

" Enable GUI ScrollBar
if exists(':GuiScrollBar')
    GuiScrollBar 1
endif


" Right Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv
