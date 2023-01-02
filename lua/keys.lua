-- replacing keys.vimrc with keys.lua.
-- remove from keys.vimrc after get it working in this file
vim.g.mapleader = ","
local map = vim.keymap.set

map("n", "ge", '<cmd>NvimTreeToggle<CR>')

-- Split Navigations
map("n", "<C-J>", "<C-W><C-J>")
map("n", "<C-K>", "<C-W><C-K>")
map("n", "<C-L>", "<C-W><C-L>")
map("n", "<C-H>", "<C-W><C-H>")

-- " Split Windows
map("n", '<leader>h', '<cmd>split<CR>')
map("n", '<leader>v', '<cmd>vsplit<CR>')

-- Keep cursor at the bottom of the visual selection after you yank it.
map("v", 'y', 'ygv<Esc>')

map('n', '<leader>n', '<cmd>nohlsearch<CR>')

-- vnoremap <c-a> :Inc<CR> " Increment by 1
map('v', '<', '<gv') -- better indentation.  doesn't lose visual selection
map('v', '>', '>gv') -- better indentation.  doesn't lose visual selection

-- quickfix
map('n', '<leader>q', ':Quickfix<CR>')
map('n', '<leader>l', ':Quickfix!<CR>')

-- Folding
map('n', '<space>', 'zA') -- Enable folding with the spacebar

map('n', '<c-a>', ':Inc<CR>') -- Increment by 1

-- vim-test
map('n', 't<C-n>', ':TestNearest<CR>')
map('n', 't<C-f>', ':TestFile<CR>')
map('n', 't<C-s>', ':TestSuite<CR>')
map('n', 't<C-l>', ':TestLast<CR>')
map('n', 't<C-g>', ':TestVisit<CR>')

-- vim-asterisk
map('n', '*', '<Plug>(asterisk-z*)')
map('n', '#', '<Plug>(asterisk-z#)')
map('n', 'g*', '<Plug>(asterisk-gz*)')
map('n', 'g#', '<Plug>(asterisk-gz#)')

-- Hop - EasyMotion replacement
map('n', 's', ':HopChar1<CR>')

-- terminal commands
-- tnoremap <Esc> <C-\><C-n>

-- map <S-q> :q<CR>   " doesn't work, use unimpaired mapings [q, ]q
--
-- -- " Alternate File
-- -- " nnoremap <leader>a :A<CR>
-- -- " nnoremap <leader>a :cclose<CR>
--
--  " Remap keys for gotos
--  nmap <silent> gy <Plug>(coc-type-definition)
--  nmap <silent> gi <Plug>(coc-implementation)
--
--  " Use CTRL-S for selections ranges.
--  " Requires 'textDocument/selectionRange' support of language server.
--  nmap <silent> <C-s> <Plug>(coc-range-select)
--  xmap <silent> <C-s> <Plug>(coc-range-select)
--
--  " Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
--  " keep hitting <C-d> to select next outter component
--  " conflicts with <C-d> default Page Down command
--  " nmap <silent> <C-d> <Plug>(coc-range-select)
--  " xmap <silent> <C-d> <Plug>(coc-range-select)
--
--  " Use `:Fold` to fold current buffer
--  command! -nargs=? Fold :call CocAction('fold', <f-args>)
--
--  " use `:OR` for organize import of current buffer
--  command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')
--
--  augroup mygroup
--    autocmd!
--    " Setup formatexpr specified filetype(s).
--    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
--    " Update signature help on jump placeholder
--    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
--  augroup end
