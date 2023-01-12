-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
	modified = {
		enabled = true,
		show_on_dirs = true,
		show_on_open_dirs = true,
	},
	update_focused_file = {
		enable = true
	},
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "h", action = "close_node" },
				{ key = "l", action = "edit" },
				{ key = "<C-k>", action = "" },
			},
		},
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
	},
	actions = {
		change_dir = {
			enable = false,
			restrict_above_cwd = true,
		},
	},
	filters = {
		dotfiles = true,
	},
	renderer = {
		full_name = true,
		group_empty = true,
		highlight_git = true,
		highlight_modified = "all",
		highlight_opened_files = "all",
		special_files = {},
		symlink_destination = false,
		indent_markers = {
			enable = true,
		},
		icons = {
			git_placement = "after",
			show = {
				file = true,
				folder = true,
				folder_arrow = false,
				git = true,
			},
		},
	},
})
