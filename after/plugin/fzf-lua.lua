require('fzf-lua').setup{}

local set = vim.keymap.set

set("n", ';', ':FzfLua buffers<CR>') -- use <C-X> to delete buffers
set("n", "<leader><space>", ":FzfLua files<CR>")
set("n", "<leader>/", ":FzfLua grep<CR>") -- set("n", "<leader>/", "<cmd>Rg<CR>")
set("n", "<leader>rg", ':FzfLua grep_cword<CR>') -- set("n", "<leader>rg", ':Rg <C-R><C-W><CR>')
set("n", "<leader><leader>", ":FzfLua<CR>") -- open fzf-lua to select an fzf option
