
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

" terminal commands
" tnoremap <Esc> <C-\><C-n>

" map <S-q> :q<CR>   " doesn't work, use unimpaired mapings [q, ]q 
"
" -- " Alternate File
" -- " nnoremap <leader>a :A<CR>
" -- " nnoremap <leader>a :cclose<CR>
"
" -- " quickfix
" nnoremap <Leader>q :Quickfix<CR>
" nnoremap <Leader>l :Quickfix!<CR>
"
" -- " Folding
" -- " Enable folding with the spacebar
" nnoremap <space> zA
"

"  " Remap keys for gotos
"  nmap <silent> gy <Plug>(coc-type-definition)
"  nmap <silent> gi <Plug>(coc-implementation)
" 
"  " Use CTRL-S for selections ranges.
"  " Requires 'textDocument/selectionRange' support of language server.
"  nmap <silent> <C-s> <Plug>(coc-range-select)
"  xmap <silent> <C-s> <Plug>(coc-range-select)
" 
"  " Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"  " keep hitting <C-d> to select next outter component
"  " conflicts with <C-d> default Page Down command
"  " nmap <silent> <C-d> <Plug>(coc-range-select)
"  " xmap <silent> <C-d> <Plug>(coc-range-select)
" 
"  " Use `:Fold` to fold current buffer
"  command! -nargs=? Fold :call CocAction('fold', <f-args>)
" 
"  " use `:OR` for organize import of current buffer
"  command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')
" 
"  augroup mygroup
"    autocmd!
"    " Setup formatexpr specified filetype(s).
"    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"    " Update signature help on jump placeholder
"    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"  augroup end
