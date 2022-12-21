" set runtimepath^=~/.vim runtimepath+=~/.vim/after
set runtimepath^=~/.config/nvim/.vim runtimepath+=~/.config/nvim/.vim/after
let &packpath = &runtimepath
source $HOME/.config/nvim/vimrc.vim

if exists(':GuiFont')
    GuiFont! 'Hack\ Nerd\ Font:h14'
endif

colorscheme tokyonight-night

set number
set autowrite             " automatically write file if you call :make - used for :GoBuild  
set title
set smarttab
set encoding=UTF-8
set smartindent
set shiftwidth=2
set tabstop=2
set expandtab
set nofoldenable
set clipboard+=unnamedplus
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set cmdheight=1 " Better display for messages
set updatetime=300 " You will have bad experience for diagnostic messages when it's default 4000.
set shortmess+=c " don't give |ins-completion-menu| messages.
set textwidth=79
set incsearch
set shell=/bin/zsh
set number
set noscrollbind
set scrolloff=1
set nocursorbind
set visualbell            " turn off visual bell
set noerrorbells          " turn off error bells
set nowrap                " default to not wrap lines when opening a file
set ignorecase
set smartcase             " overrides idnorecase if uppercase used in search string
set wildmode=longest,list " help command-line
set formatoptions-=a      " auto formatting of paragraphs
set formatoptions+=j      " delete comment characters when joining lines
set hidden                " can write a buffer, bring up another, go back to original, and undo will work
set showmatch             " briefly show matching (,[,{
set nosol                 " no start of line. when in Visual and do Cntl-D or G, don't go to start of line, but keep in same column
set guioptions=           " don't show scrollbars or menu bar"
set winaltkeys=no " Disable menu accelerators.  The Alt key that activates the menu interfere with the Brief key mappings.
set hlsearch
set ruler                " show row, column, and % file in bottom right corner
set completeopt=menu
set completeopt+=preview
set csprg=/opt/local/bin/cscope
set undodir=$HOME/.config/nvim/.vim-undo-dir
set undofile
set noswapfile
set nocompatible              " required

" define additive keywords to find during * and # commands
set iskeyword+=- "add to iskeywords to get gf to open files with -'s such as EMIR files
set iskeyword+=/ "add to iskeywords to help find dspf hierarchical names
set iskeyword+=@ "add to iskeywords to help find dspf hierarchical names
"set iskeyword+=! "add to iskeywords to help find dspf hierarchical names

let Tlist_Ctags_Cmd = '~/Downloads/ctags-5.8/ctags'

let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '              
let g:webdevicons_conceal_nerdtree_brackets = 0               
let g:WebDevIconsUnicodeDecorateFolderNodes = 1               
let g:DevIconsEnableFoldersOpenClose = 1                      
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1             
                                                              
if exists('g:loaded_webdevicons')                             
  call webdevicons#refresh()                                  
endif                                                         

