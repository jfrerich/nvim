vim.opt.number = true
-- set autowrite   -- automatically write file if you call :make - used for :GoBuild
vim.opt.title = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.smarttab = true

vim.opt.wrap = false -- default to not wrap lines when opening a file
vim.opt.swapfile = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.scrolloff = 1

vim.opt.termguicolors = true
vim.opt.updatetime = 50 -- You will have bad experience for diagnostic messages when it's default 4000.

vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.wildmode = { 'longest:list' } -- help command-line

vim.opt.ignorecase = true
vim.opt.smartcase = true -- overrides ignorecase if uppercase used in search string

-- Some servers have issues with backup files, see #649
vim.opt.backup = false
-- vim.opt.write = false

vim.opt.undofile = true -- persist undos when reopen a file

vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }
vim.opt.shortmess:append('c')

-- vim.opt.foldmethod = 'expr'
-- vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

-- vim.opt.encoding=UTF-8
-- vim.opt.expandtab
-- vim.opt.nofoldenable
-- vim.opt.cmdheight=1 " Better display for messages
-- vim.opt.shortmess+=c " don't give |ins-completion-menu| messages.
-- vim.opt.textwidth=79
-- vim.opt.noscrollbind
-- vim.opt.nocursorbind
-- vim.opt.formatoptions-=a      " auto formatting of paragraphs
-- vim.opt.formatoptions+=j      " delete comment characters when joining lines
-- vim.opt.winaltkeys=no " Disable menu accelerators.  The Alt key that activates the menu interfere with the Brief key mappings.
-- vim.opt.ruler                " show row, column, and % file in bottom right corner
-- vim.opt.completeopt+=preview
-- vim.opt.csprg=/opt/local/bin/cscope
-- vim.opt.undodir=$HOME/.config/nvim/.vim-undo-dir
-- vim.opt.nocompatible              " required

-- Doesn't seem to be needed in neovim
-- vim.opt.nosol                 " no start of line. when in Visual and do Cntl-D or G, don't go to start of line, but keep in same column
-- vim.opt.shell=/bin/zsh
-- vim.opt.hidden                " can write a buffer, bring up another, go back to original, and undo will work
-- vim.opt.showmatch = true -- briefly show matching (,[,{
-- vim.opt.visualbell            " turn off visual bell
-- vim.opt.noerrorbells          " turn off error bells
-- vim.opt.guioptions=           " don't show scrollbars or menu bar"

-- " define additive keywords to find during * and # commands
-- set iskeyword+=- "add to iskeywords to get gf to open files with -'s such as EMIR files
-- set iskeyword+=/ "add to iskeywords to help find dspf hierarchical names
-- set iskeyword+=@ "add to iskeywords to help find dspf hierarchical names
-- "set iskeyword+=! "add to iskeywords to help find dspf hierarchical names
