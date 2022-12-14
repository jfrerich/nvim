local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.local/share/nvim/plugged')

-- color schemes
Plug 'folke/tokyonight.nvim'
Plug 'rebelot/kanagawa.nvim'

-- random useful
Plug 'tpope/vim-repeat'
Plug 'tomtom/tComment_vim'
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'powerline/powerline-fonts'
Plug 'vim-airline/vim-airline' -- status line
Plug 'vim-airline/vim-airline-themes' -- status line themes
Plug 'bergercookie/vim-debugstring'
Plug 'will133/vim-dirdiff'
Plug 'dbeniamine/cheat.sh-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'neoclide/jsonc.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mbbill/undotree'
Plug 'junegunn/vim-peekaboo' --  show vim registers window
Plug 'haya14busa/vim-asterisk'
Plug 'farmergreg/vim-lastplace'

-- nvim plugins
Plug('phaazon/hop.nvim', { branch = 'v2' })
Plug 'numToStr/Comment.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'
Plug 'p00f/nvim-ts-rainbow'
Plug 'folke/which-key.nvim'
Plug 'RRethy/vim-illuminate'
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.0' })

-- todo comments
Plug 'nvim-lua/plenary.nvim'
Plug 'folke/todo-comments.nvim'


-- git
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive' -- git
Plug 'junegunn/gv.vim' -- git
Plug 'tpope/vim-rhubarb' --  needed for fugitive :Gbrowse
Plug 'kdheepak/lazygit.nvim'

Plug 'tpope/vim-unimpaired'

Plug('yuki-yano/fzf-preview.vim', { branch = 'release/rpc' })
Plug('junegunn/fzf.vim', { ['do'] = vim.fn['fzf#install'] })
Plug('junegunn/fzf')
Plug('ibhagwan/fzf-lua')

Plug 'nvim-tree/nvim-web-devicons' --  optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'

Plug('fatih/vim-go', { ['do'] = vim.fn[':GoInstallBinaries'] })
Plug 'buoto/gotests-vim'
Plug('ray-x/go.nvim')

Plug('nvim-treesitter/nvim-treesitter', { ['do'] = vim.fn[':TSUpdate'] })
Plug 'RRethy/nvim-treesitter-textsubjects'

--  chatGPT
-- Plug 'jackMort/ChatGPT.nvim'
-- Plug 'MunifTanjim/nui.nvim'

--  LSP Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'VonHeikemen/lsp-zero.nvim'

--  Autocompletion
Plug 'onsails/lspkind-nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'

--  Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'honza/vim-snippets'
Plug 'epilande/vim-react-snippets'

-- Plugins to think about adding
-- https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils
-- https://github.com/tpope/vim-abolish
-- https://github.com/ThePrimeagen/vim-be-good
-- https://github.com/zbirenbaum/copilot.lua
--
vim.call('plug#end')

--  Plug 'SirVer/ultisnips'

--  --- Vim Enhancements
--  Plug 'triglav/vim-visual-increment'
--  Plug 'terryma/vim-multiple-cursors'
--  Plug 'alvan/vim-closetag'
--  Plug 'adelarsq/vim-matchit'
--  Plug 'mhinz/vim-startify'
--  Automatically clear search highlights after move your cursor
--  Plug 'haya14busa/is.vim'

--  --- Code Navigation
--  Plug 'fszymanski/fzf-quickfix', {'on': 'Quickfix'}
--  Plug 'kien/ctrlp.vim'
--  Plug 'tpope/vim-projectionist'


--  --- Language Agnostic
--  Plug 'AndrewRadev/splitjoin.vim'
--  ---   perl
--  Plug 'wolfgangmehner/perl-support'
--  ---   python
--  Plug 'python-mode/python-mode'
--  ---   go
--  ---   js, jsx, typescript
--  Plug 'nvim-treesitter/nvim-treesitter-textobjects'

--  Plug 'projekt0n/github-nvim-theme'
--  Plug 'christianchiarulli/nvcode-color-schemes.vim'
--  Plug 'tamelion/neovim-molokai'
--  Plug 'olimorris/onedarkpro.nvim'
--  Plug 'mhartington/oceanic-next'
--  Plug 'ellisonleao/gruvbox.nvim'
--  Plug 'patstockwell/vim-monokai-tasty'
--  Plug 'edenEast/nightfox.nvim'

--  --- Fonts, Status Line
--  --- Markdown
--  Plug 'vimwiki/vimwiki'
--  Plug 'suan/vim-instant-markdown'
--  Plug 'mzlogin/vim-markdown-toc'
--  Plug 'iamcco/markdown-preview.vim'
--  Plug 'plasticboy/vim-markdown'
--  Plug 'junegunn/vim-easy-align'
--  --- Testing
--  Plug 'janko/vim-test'
--  Plug 'vim-vdebug/vdebug'
--  inline git gutter changes
--  Plug 'mhinz/vim-signify'
--  Plug 'airblade/vim-gitgutter'
--  --- Themes
--  Plug 'liuchengxu/space-vim-dark'
--  Plug 'rakr/vim-one'
--  Plug 'navarasu/onedark.nvim'
--  Plug 'sainnhe/edge'
--  Plug 'shougo/echodoc'

--  --- Maybe use in the future
--  Plug editorconfig/editorconfig-vim --> set indent, tab_with for all " editors
--  Plug 'vim-scripts/indentpython.vim'
--  Plug 'suan/instant-markdown-d'
--  Plug junegunn/limelight
--  Plug 'vim-polyglot'
--  Plug 'mhinz/vim-grepper'
--  Plug 'tpope/vim-obsession'
--  Plug 'xolox/vim-misc'
--  Plug 'xolox/vim-session'
--  Plug 'roxma/nvim-yarp'
--  Plug 'Shougo/denite.nvim'
--  Plug 'roxma/vim-hug-neovim-rpc'

--  --- vim schema
--  Plug 'bounceme/poppy.vim'
-- Plug 'Solarized'
-- Plug 'elzr/vim-json'
-- Plug 'tpope/vim-sleuth'
-- Plug 'vim-scripts/a.vim'
-- Plug 'vsutil.vim'

--  --- downloaded some time ago.  not sure if need, but put here and removed from
--  /Plug dir
-- Plug 'prettier/vim-prettier'
-- Plug 'arcseldon/vim-dragvisuals'
-- Plug 'mattn/emmet-vim'
-- Plug 'rotate.vim'
-- Plug 'cscope.vim'
-- Plug 'SearchComplete'
-- Plug 'taglist.vim'
-- Plug 'Align.vim'
-- Plug 'table_format.vim'
-- Plug 'vim_IDE.vim'
-- Plug 'bling/vim-bufferline'
-- Plug 'tmhedberg/SimpylFold'
-- Bundle 'Valloric/YouCompleteMe'
-- Plug 'dense-analysis/ale'

--  --- PLUGINS not managed by vundle
--  bclose.vim script
-- let bclose_multiple = 0

--  used this to install cmake
--  Old  sudo "/Users/j_honky/Downloads/cmake-3.9.1-Darwin-x86_64/CMake.app/Contents/bin/cmake-gui" --install
--  New  brew install CMake

--  All of your Plugins must be added before the following line
-- filetype plugin indent on
