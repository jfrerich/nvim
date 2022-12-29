-- replacing keys.vimrc with keys.lua.
-- remove from keys.vimrc after get it working in this file
vim.g.mapleader = ","
local set = vim.keymap.set

set("n", "ge", '<cmd>NvimTreeToggle<CR>')

-- -- " terminal commands
-- " tnoremap <Esc> <C-\><C-n>

-- Split Navigations
set("n", "<C-J>", "<C-W><C-J>")
set("n", "<C-K>", "<C-W><C-K>")
set("n", "<C-L>", "<C-W><C-L>")
set("n", "<C-H>", "<C-W><C-H>")

-- " Split Windows
set("n", '<leader>h', '<cmd>split<CR>')
set("n", '<leader>v', '<cmd>vsplit<CR>')

-- Keep cursor at the bottom of the visual selection after you yank it.
set("v", 'y', 'ygv<Esc>')

set('n', '<leader>n', '<cmd>nohlsearch<CR>')
--
-- map <S-q> :q<CR>   " doesn't work, use unimpaired mapings [q, ]q
--
-- -- " error navigation
-- -- " map <C-N> :cnext<CR>   " doesn't work, use unimpaired mapings [q, ]q
-- -- " map <C-M> :cprevious<CR>
--
-- -- " Alternate File
-- -- " nnoremap <leader>a :A<CR>
-- -- " nnoremap <leader>a :cclose<CR>
--
-- -- " quickfix
-- nnoremap <Leader>q :Quickfix<CR>
-- nnoremap <Leader>l :Quickfix!<CR>
--
-- -- " Folding
-- -- " Enable folding with the spacebar
-- nnoremap <space> zA
--
-- vnoremap <c-a> :Inc<CR> " Increment by 1
set('v', '<', '<gv') -- better indentation.  doesn't lose visual selection
set('v', '>', '>gv') -- better indentation.  doesn't lose visual selection
--
-- " vim-asterisk
-- map *   <Plug>(asterisk-z*)
-- map #   <Plug>(asterisk-z#)
-- map g*  <Plug>(asterisk-gz*)
-- map g#  <Plug>(asterisk-gz#)
--
-- " vim-test
-- nmap <silent> t<C-n> :TestNearest<CR>
-- nmap <silent> t<C-f> :TestFile<CR>
-- nmap <silent> t<C-s> :TestSuite<CR>
-- nmap <silent> t<C-l> :TestLast<CR>
-- nmap <silent> t<C-g> :TestVisit<CR>
--
--
-- " Use <CR> to confirm completion, use: >
-- inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"
--
--
-- " Use `[g` and `]g` to navigate diagnostics
-- nmap <silent> [g <Plug>(coc-diagnostic-prev)
-- nmap <silent> ]g <Plug>(coc-diagnostic-next)
--
-- " Remap keys for gotos
-- nmap <silent> gy <Plug>(coc-type-definition)
-- nmap <silent> gi <Plug>(coc-implementation)
--
-- " use leader leader to open CocCommand in CocFzf view
-- nmap <silent> <leader><leader> :<C-u>CocFzfList<CR>
-- nmap <silent> <leader>b        :<C-u>CocFzfList diagnostics --current-buf<CR>
--

-- " Highlight symbol under cursor on CursorHold
-- " The color is too dark, use vim-go for now
-- " autocmd CursorHold * silent call CocActionAsync('highlight')
--
-- " Remap for rename current word
-- nmap <leader>rn <Plug>(coc-rename)
--
-- " Remap for format selected region
-- " xmap <leader>f  <Plug>(coc-format-selected)
-- " nmap <leader>f  <Plug>(coc-format-selected)
--
-- " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
-- " comment out because I have <leader>a mapped to show alternate file
-- xmap <leader>a  <Plug>(coc-codeaction-selected)
-- nmap <leader>a  <Plug>(coc-codeaction-selected)
-- vmap <leader>a  <Plug>(coc-codeaction-selected)
--
-- " Use CTRL-S for selections ranges.
-- " Requires 'textDocument/selectionRange' support of language server.
-- nmap <silent> <C-s> <Plug>(coc-range-select)
-- xmap <silent> <C-s> <Plug>(coc-range-select)
--
-- " Remap for do codeAction of current line
-- nmap <leader>ac  <Plug>(coc-codeaction)
-- " Fix autofix problem of current line
-- nmap <leader>qf  <Plug>(coc-fix-current)
--
-- " Create mappings for function text object, requires document symbols feature of languageserver.
-- xmap if <Plug>(coc-funcobj-i)
-- omap if <Plug>(coc-funcobj-i)
-- xmap af <Plug>(coc-funcobj-a)
-- omap af <Plug>(coc-funcobj-a)
-- xmap ic <Plug>(coc-classobj-i)
-- omap ic <Plug>(coc-classobj-i)
-- xmap ac <Plug>(coc-classobj-a)
-- omap ac <Plug>(coc-classobj-a)
--
-- " Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
-- " keep hitting <C-d> to select next outter component
-- " conflicts with <C-d> default Page Down command
-- " nmap <silent> <C-d> <Plug>(coc-range-select)
-- " xmap <silent> <C-d> <Plug>(coc-range-select)
--
--
-- " Use `:Format` to format current buffer
-- command! -nargs=0 Format :call CocAction('format')
--
-- " Use `:Fold` to fold current buffer
-- command! -nargs=? Fold :call CocAction('fold', <f-args>)
--
-- " use `:OR` for organize import of current buffer
-- command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')
--
-- " Add status line support, for integration with other plugin, checkout `:h coc-status`
-- " set statusline+=%{coc#status()}%{get(b:,'coc_current_function','')}
-- " set statusline+="jason"
--
-- " coc-yank
-- nnoremap <silent> <leader>y  :<C-u>CocList -A --normal yank<cr>
--
-- function! s:show_documentation()
--   if (index(['vim','help'], &filetype) >= 0)
--     execute 'h '.expand('<cword>')
--   else
--     " call CocAction('doHover')
--     call CocAction('definitionHover') " include defintion provider
--   endif
-- endfunction
--
--
-- augroup mygroup
--   autocmd!
--   " Setup formatexpr specified filetype(s).
--   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
--   " Update signature help on jump placeholder
--   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
-- augroup end
--
--
-- " vim:foldmethod=marker:foldlevel=0
