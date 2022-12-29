map <S-q> :q<CR>   " doesn't work, use unimpaired mapings [q, ]q 

" Alternate File 
" nnoremap <leader>a :A<CR>
" nnoremap <leader>a :cclose<CR>

" quickfix 
nnoremap <Leader>q :Quickfix<CR>
nnoremap <Leader>l :Quickfix!<CR>

" Folding
" Enable folding with the spacebar
nnoremap <space> zA
 
vnoremap <c-a> :Inc<CR> " Increment by 1

" vim-asterisk
map *   <Plug>(asterisk-z*)
map #   <Plug>(asterisk-z#)
map g*  <Plug>(asterisk-gz*)
map g#  <Plug>(asterisk-gz#)

" vim-test
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" coc.vim
" Use `[c` and `]c` to navigate diagnostics -> conflicts with [c c] with git
" gutter traversing
" nmap <silent> [c <Plug>(coc-diagnostic-prev)
" nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Use <CR> to confirm completion, use: >
" inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"

" let g:coc_snippet_next = '<tab>'

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" Highlight symbol under cursor on CursorHold
" The color is too dark, use vim-go for now
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
" comment out because I have <leader>a mapped to show alternate file
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)
" vmap <leader>a  <Plug>(coc-codeaction-selected)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
" nmap <silent> <C-s> <Plug>(coc-range-select)
" xmap <silent> <C-s> <Plug>(coc-range-select)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" keep hitting <C-d> to select next outter component
" conflicts with <C-d> default Page Down command
" nmap <silent> <C-d> <Plug>(coc-range-select)
" xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
" command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
" command! -nargs=? Fold :call CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
" command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
" set statusline+=%{coc#status()}%{get(b:,'coc_current_function','')}
" set statusline+="jason"

" Using CocList
" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" coc-yank
" nnoremap <silent> <leader>y  :<C-u>CocList -A --normal yank<cr>
