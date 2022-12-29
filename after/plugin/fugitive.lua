local set = vim.keymap.set
-- vim-fugitive
set("n", "<leader>ga", '<cmd>Gwrite<CR>')
set("n", "<leader>gc", '<cmd>Gcommit<CR>')
set("n", "<leader>gp", '<cmd>Git push<CR>')
set("n", "<leader>gs", '<cmd>Git<CR>')
set("n", "<leader>gb", '<cmd>Git blame<CR>')
set("n", "<leader>gd", '<cmd>Gvdiffsplit<CR>')
-- -- " add command and key map to force push git changes. (used after fugitive ce
-- -- " command to edit last commit)
-- command Gpushforcewithlease :Gpush --force-with-lease
-- nnoremap <leader>gpf :Gpushforcewithleas<CR>
