filetype plugin on
syntax on
filetype off

set rtp+=/usr/local/opt/fzf

call plug#begin('$HOME/.config/nvim/plugged')

" --- Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ---   Snippets
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'epilande/vim-react-snippets'

" --- Vim Enhancements
" Plug 'triglav/vim-visual-increment'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'alvan/vim-closetag'
" Plug 'adelarsq/vim-matchit'
Plug 'tpope/vim-repeat'
Plug 'tomtom/tComment_vim'
" Plug 'mbbill/undotree'
Plug 'tpope/vim-surround'
" Plug 'kien/rainbow_parentheses.vim'
" Plug 'mhinz/vim-startify'
" Automatically clear search highlights after move your cursor
" Plug 'haya14busa/is.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'tpope/vim-unimpaired'
" show vim registers window 
Plug 'junegunn/vim-peekaboo' 

" --- Code Navigation
Plug 'preservim/tagbar'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
Plug 'junegunn/fzf.vim', { 'do': 'yes \| ./install' }
Plug 'fszymanski/fzf-quickfix', {'on': 'Quickfix'}
Plug 'antoinemadec/coc-fzf'
" Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
" Plug 'tpope/vim-projectionist'

" --- Language Agnostic
" Plug 'AndrewRadev/splitjoin.vim'
" ---   perl
" Plug 'wolfgangmehner/perl-support'
" ---   python
" Plug 'python-mode/python-mode'
" ---   go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'buoto/gotests-vim'
" ---   js, jsx, typescript
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'projekt0n/github-nvim-theme'
" Plug 'christianchiarulli/nvcode-color-schemes.vim'
" Plug 'tamelion/neovim-molokai'
" Plug 'olimorris/onedarkpro.nvim' 
" Plug 'lewis6991/gitsigns.nvim'
" Plug 'mhartington/oceanic-next'
" Plug 'ellisonleao/gruvbox.nvim'
" Plug 'patstockwell/vim-monokai-tasty'
Plug 'folke/tokyonight.nvim'
" Plug 'edenEast/nightfox.nvim'

Plug 'neovim/nvim-lspconfig'

Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
" --- Fonts, Status Line
Plug 'ryanoasis/vim-devicons'
Plug 'powerline/powerline-fonts'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" --- Markdown
" Plug 'vimwiki/vimwiki'
" Plug 'suan/vim-instant-markdown'
" Plug 'mzlogin/vim-markdown-toc'
" Plug 'iamcco/markdown-preview.vim'
" Plug 'plasticboy/vim-markdown'
" Plug 'junegunn/vim-easy-align'
" --- Testing
" Plug 'janko/vim-test'
" Plug 'vim-vdebug/vdebug'
" --- git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
" needed for fugitive :Gbrowse
Plug 'tpope/vim-rhubarb'
Plug 'will133/vim-dirdiff'
" inline git gutter changes
" Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
" --- Themes
" Plug 'liuchengxu/space-vim-dark'
" Plug 'rakr/vim-one'
" Plug 'navarasu/onedark.nvim'
" Plug 'sainnhe/edge'
Plug 'dbeniamine/cheat.sh-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'benknoble/vim-auto-origami'
" Plug 'shougo/echodoc'
Plug 'neoclide/jsonc.vim'

" --- Maybe use in the future
" Plug editorconfig/editorconfig-vim --> set indent, tab_with for all " editors
" Plug 'vim-scripts/indentpython.vim'
" Plug 'suan/instant-markdown-d'
" Plug junegunn/limelight
" Plug 'vim-polyglot'
" Plug 'mhinz/vim-grepper'
" Plug 'tpope/vim-obsession'
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-session'
" Plug 'roxma/nvim-yarp'
" Plug 'Shougo/denite.nvim'
" Plug 'roxma/vim-hug-neovim-rpc'

" --- vim schema
" Plug 'bounceme/poppy.vim'
"Plug 'Solarized'
"Plug 'elzr/vim-json'
"Plug 'tpope/vim-sleuth'
"Plug 'vim-scripts/a.vim'
"Plug 'vsutil.vim'

" --- downloaded some time ago.  not sure if need, but put here and removed from
" /Plug dir
"Plug 'prettier/vim-prettier'
"Plug 'arcseldon/vim-dragvisuals'
"Plug 'mattn/emmet-vim'
"Plug 'rotate.vim'
"Plug 'cscope.vim'
"Plug 'SearchComplete'
"Plug 'taglist.vim'
"Plug 'Align.vim'
"Plug 'table_format.vim'
"Plug 'vim_IDE.vim'
"Plug 'bling/vim-bufferline'
"Plug 'tmhedberg/SimpylFold'
"Bundle 'Valloric/YouCompleteMe' 
"Plug 'dense-analysis/ale'

" --- PLUGINS not managed by vundle
" bclose.vim script
"let bclose_multiple = 0

" used this to install cmake
" Old  sudo "/Users/j_honky/Downloads/cmake-3.9.1-Darwin-x86_64/CMake.app/Contents/bin/cmake-gui" --install
" New  brew install CMake

" All of your Plugins must be added before the following line
call plug#end()
filetype plugin indent on
