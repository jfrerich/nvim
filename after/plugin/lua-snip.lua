-- Abbreviations used in this article and the LuaSnip docs
local extras = require('luasnip.extras')
local ls = require("luasnip")

ls.config.set_config({
	history = false,
	updateevents = "TextChanged,TextChangedI",
	snip_env = {
		s = ls.snippet,
		sn = ls.snippet_node,
		isn = ls.indent_snippet_node,
		t = ls.text_node,
		i = ls.insert_node,
		f = ls.function_node,
		c = ls.choice_node,
		d = ls.dynamic_node,
		r = ls.restore_node,
		events = require("luasnip.util.events"),
		ai = require("luasnip.nodes.absolute_indexer"),
		extras = require("luasnip.extras"),
		l = extras.lambda,
		rep = extras.rep,
		p = extras.partial,
		m = extras.match,
		n = extras.nonempty,
		dl = extras.dynamic_lambda,
		fmt = require("luasnip.extras.fmt").fmt,
		fmta = require("luasnip.extras.fmt").fmta,
		conds = require("luasnip.extras.expand_conditions"),
		postfix = require("luasnip.extras.postfix").postfix,
		types = require("luasnip.util.types"),
		parse = require("luasnip.util.parser").parse_snippet,
	},
})
require("luasnip/loaders/from_lua").lazy_load()
require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/snippets" })

-- local keymap = vim.api.nvim_set_keymap
-- -- local opts = { noremap = true, silent = true }
-- keymap("i", "<C-n>", "<Plug>luasnip-next-choice", {})
-- keymap("s", "<C-n>", "<Plug>luasnip-next-choice", {})
-- keymap("i", "<C-p>", "<Plug>luasnip-prev-choice", {})
-- keymap("s", "<C-p>", "<Plug>luasnip-prev-choice", {})
-- keymap("i", "<c-h>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
-- keymap("s", "<c-h>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
-- keymap("i", "<c-l>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
-- keymap("s", "<c-l>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
