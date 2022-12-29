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
