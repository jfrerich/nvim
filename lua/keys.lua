-- replacing keys.vimrc with keys.lua.
-- remove from keys.vimrc after get it working in this file
vim.g.mapleader = ","
local set = vim.keymap.set

set("n", "ge", '<cmd>NvimTreeToggle<CR>')

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

-- vnoremap <c-a> :Inc<CR> " Increment by 1
set('v', '<', '<gv') -- better indentation.  doesn't lose visual selection
set('v', '>', '>gv') -- better indentation.  doesn't lose visual selection
