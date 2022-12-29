-- replacing keys.vimrc with keys.lua.
-- remove from keys.vimrc after get it working in this file
vim.g.mapleader = ","
local set = vim.keymap.set

set("n", "ge", '<cmd>NvimTreeToggle<CR>')

-- -- " terminal commands
-- " tnoremap <Esc> <C-\><C-n>

-- Split Navigations
set("n", "<C-J>", "<C-W><C-J>")
set("n", "<C-K>", "<C-W><C-K>")
set("n", "<C-L>", "<C-W><C-L>")
set("n", "<C-H>", "<C-W><C-H>")

-- " Split Windows
set("n", '<leader>h', '<cmd>split<CR>')
set("n", '<leader>v', '<cmd>vsplit<CR>')

-- Keep cursor at the bottom of the visual selection after you yank it.
set("v", 'y', 'ygv<Esc>')

set('n', '<leader>n', '<cmd>nohlsearch<CR>')
--
-- map <S-q> :q<CR>   " doesn't work, use unimpaired mapings [q, ]q
--
-- -- " error navigation
-- -- " map <C-N> :cnext<CR>   " doesn't work, use unimpaired mapings [q, ]q
-- -- " map <C-M> :cprevious<CR>
--
-- -- " Alternate File
-- -- " nnoremap <leader>a :A<CR>
-- -- " nnoremap <leader>a :cclose<CR>
--
-- -- " quickfix
-- nnoremap <Leader>q :Quickfix<CR>
-- nnoremap <Leader>l :Quickfix!<CR>
--
-- -- " Folding
-- -- " Enable folding with the spacebar
-- nnoremap <space> zA
--
-- vnoremap <c-a> :Inc<CR> " Increment by 1
set('v', '<', '<gv') -- better indentation.  doesn't lose visual selection
set('v', '>', '>gv') -- better indentation.  doesn't lose visual selection
--
-- " vim-asterisk
-- map *   <Plug>(asterisk-z*)
-- map #   <Plug>(asterisk-z#)
-- map g*  <Plug>(asterisk-gz*)
-- map g#  <Plug>(asterisk-gz#)
--
-- " vim-test
-- nmap <silent> t<C-n> :TestNearest<CR>
-- nmap <silent> t<C-f> :TestFile<CR>
-- nmap <silent> t<C-s> :TestSuite<CR>
-- nmap <silent> t<C-l> :TestLast<CR>
-- nmap <silent> t<C-g> :TestVisit<CR>
--
-- " Remap keys for gotos
-- nmap <silent> gy <Plug>(coc-type-definition)
-- nmap <silent> gi <Plug>(coc-implementation)
--
-- " Use CTRL-S for selections ranges.
-- " Requires 'textDocument/selectionRange' support of language server.
-- nmap <silent> <C-s> <Plug>(coc-range-select)
-- xmap <silent> <C-s> <Plug>(coc-range-select)

-- " Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
-- " keep hitting <C-d> to select next outter component
-- " conflicts with <C-d> default Page Down command
-- " nmap <silent> <C-d> <Plug>(coc-range-select)
-- " xmap <silent> <C-d> <Plug>(coc-range-select)
--
-- " Use `:Format` to format current buffer
-- command! -nargs=0 Format :call CocAction('format')
--
-- " Use `:Fold` to fold current buffer
-- command! -nargs=? Fold :call CocAction('fold', <f-args>)
--
-- " use `:OR` for organize import of current buffer
-- command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')
--
-- augroup mygroup
--   autocmd!
--   " Setup formatexpr specified filetype(s).
--   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
--   " Update signature help on jump placeholder
--   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
-- augroup end
