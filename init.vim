" set runtimepath^=~/.vim runtimepath+=~/.vim/after
set runtimepath^=~/.config/nvim/.vim runtimepath+=~/.config/nvim/.vim/after
set number
let &packpath = &runtimepath
source $HOME/.config/nvim/vimrc.vim

if exists(':GuiFont')
    GuiFont! 'Hack\ Nerd\ Font:h14'
endif

" colorscheme tokyonight " apply after setting let g:space_vim_dark
colorscheme tokyonight-night " apply after setting let g:space_vim_dark
