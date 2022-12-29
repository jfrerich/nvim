local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.ensure_installed({
	'tsserver',
	'eslint',
	'sumneko_lua',
})
lsp.setup()

local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
	'force',
	lsp_defaults.capabilities,
	require('cmp_nvim_lsp').default_capabilities()
)

local on_attach = function(client, bufnr)
	-- formatting
	if client.server_capabilities.documentFormattingProvider then
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = vim.api.nvim_create_augroup("Format", { clear = true }),
			buffer = bufnr,
			callback = function() vim.lsp.buf.format() end
		})
	end
end

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics,
	{
		virtual_text = false,
		underline = true,
		signs = true,
	}
)

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = [[*.tsx,*.ts,*.jsx,*.js]],
	command = [[EslintFixAll]]
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
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

require 'lspconfig'.sumneko_lua.setup {
	on_attach = on_attach,
	-- ... other configs
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			}
		},
		workspace = {
			library = vim.api.nvim_get_runtime_file("", true),
			checkThirdParty = false
		}
	}
}
