--[[ opts.lua]]

local opt = vim.opt

vim.cmd [[ colorscheme tokyonight]]

-- [[ Context ]]
opt.colorcolumn = '80'           -- str:  Show col for max line length
opt.number = true                -- bool: Show line numbers
-- opt.relativenumber = true        -- bool: Show relative line numbers
opt.scrolloff = 4                -- int:  Min num lines of context
opt.signcolumn = "yes"           -- str:  Show the sign column

-- [[ Filetypes ]]
opt.encoding = 'utf8'            -- str:  String encoding to use
opt.fileencoding = 'utf8'        -- str:  File encoding to use

-- [[ Theme ]]
opt.syntax = "ON"                -- str:  Allow syntax highlighting
opt.termguicolors = true         -- bool: If term supports ui color then enable

-- [[ Search ]]
opt.ignorecase = true            -- bool: Ignore case in search patterns
opt.smartcase = true             -- bool: Override ignorecase if search contains capitals
opt.incsearch = true             -- bool: Use incremental search
opt.hlsearch = false             -- bool: Highlight search matches

-- [[ Whitespace ]]
opt.expandtab = true             -- bool: Use spaces instead of tabs
opt.shiftwidth = 4               -- num:  Size of an indent
opt.softtabstop = 4              -- num:  Number of spaces tabs count for in insert mode
opt.tabstop = 4                  -- num:  Number of spaces tabs count for

-- [[ Splits ]]
opt.splitright = true            -- bool: Place new window to right of current one
opt.splitbelow = true            -- bool: Place new window below the current one

-- [[ my old settings from init.vimrc ]]

-- set textwidth=79
-- set incsearch
-- set shell=/bin/zsh
-- set number
-- set noscrollbind
-- set scrolloff=1
-- set nocursorbind
-- set visualbell            " turn off visual bell
-- "set vb t_vb=              " turn off visual bell
-- set noerrorbells          " turn off error bells
-- set nowrap                " default to not wrap lines when opening a file
-- set ignorecase
-- set smartcase             " overrides idnorecase if uppercase used in search string
-- set wildmode=longest,list " help command-line
-- set formatoptions-=a      " auto formatting of paragraphs
-- set formatoptions+=j      " delete comment characters when joining lines
-- set hidden                " can write a buffer, bring up another, go back to original, and undo will work
-- set showmatch             " briefly show matching (,[,{
-- set nosol                 " no start of line. when in Visual and do Cntl-D or G, don't go to start of line, but keep in same column
--                           " want this for column editing. Ex - HSIM .vec files
-- set guioptions=           " don't show scrollbars or menu bar"
-- set winaltkeys=no " Disable menu accelerators.  The Alt key that activates the menu interfere with the Brief key mappings.
-- set hlsearch
-- set ruler                " show row, column, and % file in bottom right corner
-- set completeopt=menu
-- set completeopt+=preview
-- set csprg=/opt/local/bin/cscope
-- set noswapfile
-- set autowrite             " automatically write file if you call :make - used for :GoBuild  
-- set title
-- set smarttab
-- set smartindent
-- set shiftwidth=2
-- set tabstop=2
-- set nofoldenable

-- " if (has("termguicolors"))
-- "     set termguicolors
-- " endif
-- if has("gui_vimr")
--   set guifont=Menlo-Regular:h11
--   " Here goes some VimR specific settings like
--   " color xyz
-- endif
--
-- let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '              
-- let g:webdevicons_conceal_nerdtree_brackets = 0               
-- let g:WebDevIconsUnicodeDecorateFolderNodes = 1               
-- let g:DevIconsEnableFoldersOpenClose = 1                      
-- let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1             
--                                                               
-- if exists('g:loaded_webdevicons')                             
--   call webdevicons#refresh()                                  
-- endif                                                         
--
-- " Better display for messages
-- set cmdheight=1
-- " You will have bad experience for diagnostic messages when it's default 4000.
-- set updatetime=300
-- " don't give |ins-completion-menu| messages.
-- set shortmess+=c
--
-- " This creates an error when using coc.vim.  To repro, newline <Tab> <Tab>
-- " autocmd FileType go setlocal foldmethod=indent foldlevel=0 foldlevelstart=0 
--
--
-- let Tlist_Ctags_Cmd = '~/Downloads/ctags-5.8/ctags'
--
-- set nocompatible              " required
--
-- " define additive keywords to find during * and # commands
-- set iskeyword+=- "add to iskeywords to get gf to open files with -'s such as EMIR files
-- set iskeyword+=/ "add to iskeywords to help find dspf hierarchical names
-- set iskeyword+=@ "add to iskeywords to help find dspf hierarchical names
-- "set iskeyword+=! "add to iskeywords to help find dspf hierarchical names
--
-- if has('persistent_undo')
--   set undofile
--   set undodir=$HOME/.config/nvim/.vim_undodir
-- endif
