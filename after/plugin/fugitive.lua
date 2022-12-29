local set = vim.keymap.set
-- vim-fugitive
set("n", "<leader>ga", '<cmd>Gwrite<CR>')
set("n", "<leader>gc", '<cmd>Gcommit<CR>')
set("n", "<leader>gp", '<cmd>Git push<CR>')
set("n", "<leader>gs", '<cmd>Git<CR>')
set("n", "<leader>gb", '<cmd>Git blame<CR>')
set("n", "<leader>gd", '<cmd>Gvdiffsplit<CR>')
set("n", "<leader>gpf", ':Gpushforcewithlease<CR>')

-- -- " command to edit last commit)
