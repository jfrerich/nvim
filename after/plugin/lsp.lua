local lsp = require('lsp-zero')

local set = vim.keymap.set
set("n", "<leader>ac", '<cmd>lua vim.lsp.buf.code_action()<CR>')
set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })

lsp.preset('recommended')
lsp.ensure_installed({
	'tsserver',
	'eslint',
	'sumneko_lua',
})
lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}
  local bind = vim.keymap.set

  bind('n', 'gr', '<cmd>:FzfLua lsp_references<CR>', opts)
  -- more code  ...
end)
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
