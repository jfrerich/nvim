require('fzf-lua').setup{}

local set = vim.keymap.set

set("n", ';', ':FzfLua buffers<CR>') -- use <C-X> to delete buffers
set("n", "<leader><space>", ":FzfLua files<CR>")
set("n", "<leader>/", ":FzfLua grep<CR><Esc>") -- set("n", "<leader>/", "<cmd>Rg<CR>")
set("n", "<leader>rg", ':FzfLua grep_cword<CR>') -- set("n", "<leader>rg", ':Rg <C-R><C-W><CR>')
set("n", "<leader><leader>", ":FzfLua<CR>") -- open fzf-lua to select an fzf option

-- -- " nnoremap <silent> [fzf-p]/     :<C-u>FzfPreviewLinesRpc --add-fzf-arg=--no-sort --add-fzf-arg=--query="'"<CR>
-- -- " nnoremap <silent> [fzf-p]*     :<C-u>FzfPreviewLinesRpc --add-fzf-arg=--no-sort --add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>

------------------------------
-- from plugin_settings.vimrc
-- " FZF
-- " Default fzf layout
-- " - down / up / left / right
-- " let g:fzf_preview_use_dev_icons = 1
-- " let g:fzf_preview_dev_icon_prefix_string_length = 3
-- let g:fzf_layout = { 'down': '~65%' }
-- " let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true } }
--
--
-- " FZF-preview.vim
-- " highlight the line so it is easily visible
-- let $FZF_PREVIEW_COMMAND="COLORTERM=truecolor bat --style=numbers --color=always {} --theme OneHalfDark"
--
-- let $FZF_DEFAULT_OPTS = '--reverse' " revere the results with fzf command at top
-- command! -bang -nargs=? -complete=dir Files
--     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)
--
-- " function! RipgrepFzf(query, fullscreen)
-- "   let exclude_fmt = "-g '!package.json' -g '!package-lock.json' "
-- "   let colors_fmt = " --color=always --colors 'match:bg:yellow' --colors 'match:fg:black' --colors 'match:style:bold' "
-- "   let command_fmt = "rg --line-number --no-heading " . exclude_fmt . colors_fmt . "--smart-case -- "
-- "   let initial_command = printf(command_fmt, shellescape(a:query))
-- "   let reload_command = printf(command_fmt, '{q}')
-- "   let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
-- "   call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
-- " endfunction
-- "
-- " command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
--
-- command! -bang -nargs=* Rg
--   \ call fzf#vim#grep(
--   \   "rg -g '!package.json' -g '!package-lock.json' --line-number --no-heading --color=always --colors 'match:bg:yellow' --colors 'match:fg:black' --colors 'match:style:bold' --smart-case -- ".shellescape(<q-args>), 1,
--   \   fzf#vim#with_preview(), <bang>0)
-- " \ call fzf#vim#grep(
-- " \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
-- " \   fzf#vim#with_preview(), <bang>0)
--
