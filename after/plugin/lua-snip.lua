local ls = require "luasnip"
local s = ls.snippet
-- some shorthands...
-- local snip = ls.snippet
-- local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
-- local choice = ls.choice_node
-- local dynamicn = ls.dynamic_node
-- local fmt = require("luasnip.extras.fmt").fmt
-- local fmta = require("luasnip.extras.fmt").fmta
-- local rep = require("luasnip.extras").rep

-- Abbreviations used in this article and the LuaSnip docs
local luasnip = require('luasnip')
local types = require('luasnip.util.types')
local extras = require('luasnip.extras')
local fmt = require('luasnip.extras.fmt').fmt

luasnip.config.set_config({
	history = false,
	updateevents = "TextChanged,TextChangedI",
	snip_env = {
		s = require("luasnip.nodes.snippet").S,
		sn = require("luasnip.nodes.snippet").SN,
		isn = require("luasnip.nodes.snippet").ISN,
		t = require("luasnip.nodes.textNode").T,
		i = require("luasnip.nodes.insertNode").I,
		f = require("luasnip.nodes.functionNode").F,
		c = require("luasnip.nodes.choiceNode").C,
		d = require("luasnip.nodes.dynamicNode").D,
		r = require("luasnip.nodes.restoreNode").R,
		events = require("luasnip.util.events"),
		ai = require("luasnip.nodes.absolute_indexer"),
		extras = extras,
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
require("luasnip/loaders/from_lua").lazy_load({ paths = { './snippets' } })
-- ls.config.set_config {
-- }

-- ls.setup({
-- 	snip_env = {
-- 		s = function(...)
-- 			local snip = ls.s(...)
-- 			-- we can't just access the global `ls_file_snippets`, since it will be
-- 			-- resolved in the environment of the scope in which it was defined.
-- 			table.insert(getfenv(2).ls_file_snippets, snip)
-- 		end,
-- 		parse = function(...)
-- 			local snip = ls.parser.parse(...)
-- 			table.insert(getfenv(2).ls_file_snippets, snip)
-- 		end,
-- 		-- remaining definitions.
-- 		...
-- 	},
-- 	...
-- })

local has_words_before = function()
	unpack = unpack or table.unpack
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local luasnip = require("luasnip")
local cmp = require("cmp")
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets" })

cmp.setup({

	-- ... Your other configuration ...

	mapping = {

		-- ... Your other mappings ...

		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),

		-- ... Your other mappings ...
	},

	-- ... Your other configuration ...
})


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

-- ls.add_snippets(nil, {
-- 	lua = snip("shebang", {
-- 		text { "#!/usr/bin/lua", "", "" },
-- 		insert(0),
-- 	}),
-- })
