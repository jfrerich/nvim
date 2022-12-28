local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.ensure_installed({
  'tsserver',
  'eslint',
  'sumneko_lua',
})
lsp.setup()

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
cmp.setup({
	formatting = {
		format = function(entry, vim_item)
		  -- fancy icons and a name of kind
		  vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind

		  -- set a name for each source
		  vim_item.menu = ({
			buffer = "[Buffer]",
			path = "[Path]",
			nvim_lsp = "[LSP]",
			nvim_lua = "[Lua]",
			calc = "[Calc]",
			emoji = "[Emoji]",
			ultisnips = "[UltiSnips]",
			cmp_tabnine = "[TabNine]",
		  })[entry.source.name]

		  return vim_item
		end,
    },
	mapping = {
	  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
	  ["<C-Space>"] = cmp.mapping.complete(),
	},
	sources = cmp.config.sources({
        { name = "luasnip", option = { use_show_condition = true } },
        { name = "nvim_lsp_signature_help" },
        { name = "nvim_lua" },
        { name = "nvim_lsp", max_item_count = 30 }, -- tsserver likes to send back _everything_
        { name = "path" },
        { name = "buffer", keyword_length = 3 }, -- don't complete from buffer right away
    }),
})


require'lspconfig'.sumneko_lua.setup {
    -- ... other configs
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}

