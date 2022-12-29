-- vim.cmd('source $HOME/.config/nvim/vimrc.vim')

require('plugins')
require('keys')
require('set')

vim.cmd('source $HOME/.config/nvim/myplugins/*.vim') -- my Plugins and key maps for myplugins
vim.cmd('source $HOME/.config/nvim/keys.vimrc')
vim.cmd('source $HOME/.config/nvim/plugin_settings.vimrc')

-- pull from vimrc.vim into this file 'init.lua'
vim.cmd [[ colorscheme tokyonight-night ]]
-- vim.cmd [[ colorscheme kanagawa ]]  -- has nice colors and helps identify returns

-- vim.cmd [[autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()]]
vim.cmd [[autocmd CursorHold * lua vim.diagnostic.open_float({scope="line"})]]
vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]


vim.cmd('ab _" "####################################')
vim.cmd('ab _* *########################################################################')
vim.cmd('ab _# ####################################')

-- highlight go test file t.Run lines
-- augroup go
--   autocmd FileType go syntax match goTRun /t.Run.".*"/
--   highlight goTRun guifg=orange
-- augroup END

-- highlight js test file 'test()' lines
-- autocmd FileType json syntax match Comment +\/\/.\+$+
-- 	highlight jsTest guifg=orange
-- autocmd BufRead,BufNewFile *.tsx syntax match jsTest /.*test(.*/

-- " Add some syntax highlighthing to jsx/tsx snapshots. xml does a decent job
-- autocmd BufRead,BufNewFile *.tsx.snap,*.jsx.snap setlocal filetype=xml

-- autocmd VimResized * wincmd = " Auto-resize splits when Vim gets resized.

-- augroup javascript_folding
--     au!
--     " .ts, .tsx, .js, .jsx
--     " au FileType typescript,typescript.tsx,javascript,javascriptreact setlocal foldmethod=syntax
-- augroup END

-- " filetype plugin on
-- " syntax on
-- " filetype off
-- "
-- " " if exists(':GuiFont')
-- " "     GuiFont! 'Hack\ Nerd\ Font:h14'
-- " " endif
-- "
-- "
-- " filetype plugin indent on
--
--
-- "map  :call PrintVariables_Vim()<CR>
--
-- " allow for a user of vim folds to save and open folds when reopen the file
-- " if a user doesn't have the following, I don't think they will see the folds when they load the file
-- " au BufWinLeave ?* mkview 1
-- " au BufWinEnter ?* silent loadview 1
--
-- "map  :PrintVariables\
-- "map P :PrintVariablesOneLine\
--
-- "####################################
-- " map ,# :s/^/#/<CR>:nohlsearch\\
-- " perl # comments
--
-- " if exists('g:loaded_webdevicons')
-- "     call webdevicons#refresh()
-- " endif
-- " let g:vim_jsx_pretty_colorful_config = 1 " default 0

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
