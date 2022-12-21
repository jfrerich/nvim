" vim-go
" https://www.diycode.cc/projects/fatih/vim-go
au BufNewFile,BufRead *.go setlocal noexpandtab tabstop=2 shiftwidth=2 softtabstop=2
augroup go
  "go build, run, test mappings
  au FileType go nmap <leader>b <Plug>(go-build)
  au FileType go nmap <leader>r <Plug>(go-run)
  au FileType go nmap <leader>t <Plug>(go-test)
  au FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
  au FileType go nmap <leader>R :<C-u>GoRun %<cr>

  au FileType go nmap <Leader>ds <Plug>(go-def-split)
  au FileType go nmap <Leader>dv <Plug>(go-def-vertical)

  " au FileType go nmap <Leader>gd <Plug>(go-doc)
  au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

  au FileType go nmap <Leader>ge <Plug>(go-iferr)

  "Show a list of interfaces which is implemented by the type under your cursor
  au FileType go nmap <Leader>s <Plug>(go-implements)

  " Rename the identifier under the cursor to a new name
  au FileType go nmap <Leader>e <Plug>(go-rename)

  au FileType go nmap <C-g> :GoDecls<cr>
  au FileType go imap <C-g> <esc>:<C-u>GoDecls<cr>

  au FileType go nmap <leader>dr :GoDeclsDir<cr>
  au FileType go imap <leader>dr <esc>:<C-u>GoDeclsDir<cr>

  au Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  au Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  au Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')

  " handle with coc.vim
  let g:go_def_mapping_enabled = 0

  " to get :GoDeclsDir to also allow searching the filename, modify the
  " following line in ~/.vim/bundle/vim-go/autoload/fzf/decls.vim
  " the -n 1,2,3 says search 1st (type) 2nd (func/type) and 3rd columns (fileame)
  " \ 'options': '-n 1,2,3 --ansi --prompt "GoDecls> " --expect=ctrl-t,ctrl-v,ctrl-x'.colors,
  " \ 'options': '-n 1,3 --ansi --prompt "GoDecls> " --expect=ctrl-t,ctrl-v,ctrl-x'.colors,

  " au FileType go nmap <buffer> <S-F11>  <Plug>(go-debug-stepout)
  " au FileType go nmap <S-F11> <Plug>(go-step-out)
  " au Filetype go command! -bang A call (<bang>0, 'edit')

  " au Filetype go noremap <S-F11> :call GoDebugStepOut()<CR>

  " n  <C-LeftMouse> *@<LeftMouse>:GoDef<CR>
  "    î           *@:call AutoPairsJump()<CR>
  "    ð           *@:call AutoPairsToggle()<CR>
  "
augroup END

nnoremap <silent> <leader>      :<c-u>WhichKey ','<CR>

" use only quickfix list, never location list
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_gorename_command = 'gopls'
let g:go_auto_type_info = 1 " may be overkill -> always show function signature at bottom
let g:go_auto_sameids = 1
let g:go_decls_mode = 'fzf'
let go_doc_popup_window = 1

" let g:go_metalinter_autosave_enabled = [govet]
let g:go_metalinter_command = ''
let g:go_metalinter_autosave = 0
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

" https://github.com/fatih/vim-go/issues/502
" don't close all folds on :w
let g:go_fmt_experimental = 1

" increase width of stack and vars windows from defaults
let g:go_debug_windows = {
      \ 'stack': 'leftabove 40vnew',
      \ 'out':   'botright 10new',
      \ 'vars':  'leftabove 40vnew',
\ }
" END vim-go

" vim-test
" run tests in vim terminal
let test#strategy = "vimterminal"
let test#vim#term_position="vertical"
let test#go#runner = "richgo"
let g:test#go#richgo#options = '-v'
" function! DebugNearest()
"   let g:test#go#runner = 'delve'
"   TestNearest
"   unlet g:test#go#runner
" endfunction
" nmap <silent> t<C-d> :call DebugNearest()<CR>

" vim-asterisk
let g:asterisk#keeppos = 1

let g:neovide_cursor_trail_size = 0.3

" python-mode
"####################################
" Updating Python Mode can cause it to break and I've done it multiple
" times! The best fix I found is to restore an old copy of the bundle/python-mode
" folder from Time Machine backup.
" supposedly, the following pinned command will tell vundle to not update this
" folder again, if PluginUpdate is run
let g:pymode_motion = 1
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8']
" let g:pymode_lint_checkers = ['pyflakes']
" let g:pymode_lint_checkers = ['pylint']
" disable whitespace before : check
let g:pymode_lint_ignore = ['E203']
let g:pymode_lint_ignore = ['E401']
let g:pymode_run = 1
let g:pymode_python = "python3"
" Override go-to.definition key shortcut to Ctrl-]
let g:pymode_rope_goto_definition_bind = "<C-]>"
let g:pymode_rope = 1
let g:pymode_doc = 1
let g:ropevim_enable_shortcuts = 1
" Override run current python file key shortcut to Ctrl-Shift-e
" let g:pymode_run_bind = "<C-S-e>"
" Override view python doc key shortcut to Ctrl-Shift-d
" let g:pymode_doc_bind = "<C-S-d>"
"let g:pymode_quickfix_maxheight = 6


" SimpylFold
" let g:SimpylFold_docstring_preview=1

" vim-airline
function! AirlineInit()
  " airline
  " Set this. Airline will handle the rest.
  " let g:airline_theme='cool'
  " let g:airline_theme='base16_colors'
  let g:airline_theme='base16_bright'
  " other good ones: light, molokai, sol, understated, simple
  "
  let g:airline_powerline_fonts = 1
  if !exists('g:airline_symbols')
      let g:airline_symbols = {}
  endif
  let g:airline#extensions#coc#enabled = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#buffer_nr_show = 1

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.maxlinenr = '㏑'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.spell = 'Ꞩ'
  let g:airline_symbols.notexists = '∄'
  let g:airline_symbols.whitespace = 'Ξ'

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.maxlinenr = ''

  " set statusline+=%{coc#status()}%{get(b:,'coc_current_function','')}
  " less useful.  Free up this space on the status line
  let g:airline_section_x='' " file encoding
  let g:airline_section_y='' " file encoding
  let g:airline_section_z='' " filetype
  " let g:airline_section_y=%{get(b:,'coc_current_function','')}
  " let g:airline_section_y='jason'%{coc#status()}
  " let g:airline_section_y+=%{coc#status()}%{get(b:,'coc_current_function','')}
  " let g:airline_section_y+=%{coc#status()}%{get(b:,'coc_current_function','')}
  " let g:airline_section_y=cocstatusline
endfunction

autocmd VimEnter * call AirlineInit()

" coc.vim
" let g:coc_node_path = '/usr/local/Cellar/node/18.7.0/bin/node' " not needed anymore
" coc config extensions to install when they aren't already installed
" \ 'coc-spell-checker',
let g:coc_global_extensions = [
  \ 'coc-eslint',
  \ 'coc-tsserver',
  \ 'coc-jest',
  \ 'coc-ultisnips',
  \ 'coc-json',
  \ 'coc-css',
  \ 'coc-python',
  \ 'coc-yaml',
  \ 'coc-stylelintplus',
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-marketplace',
  \ 'coc-json',
  \ 'coc-lists',
  \ 'coc-jest',
  \ 'coc-fzf-preview',
  \ 'coc-explorer',
  \ 'coc-react-refactor',
  \ 'coc-markdownlint',
  \ 'coc-css',
  \ ]

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')
" autocmd ColorScheme * highlight CocHighlightText ctermbg=LightMagenta guibg=LightBlue
augroup mygroup
  autocmd!
  
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" jaf use <c-n> <c-p> instead
let g:coc_snippet_next = '<tab>'
let g:coc_snippet_next = '<c-j>' " default of coc.nvim
let g:coc_snippet_prev = '<c-k>' " default of coc.nvim

" TAKEN DIRECTLY FROM https://github.com/neoclide/coc.nvim
" if hidden is not set, TextEdit might fail.
" set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
"jaf set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
" set shortmess+=c

" always show signcolumns
" set signcolumn=yes

" UltiSnips
" Ultisnips - /Users/jfrerich/dotfiles/vim/.vim/bundle/vim-snippets/UltiSnips/go.snippets
" snippets (SnipMate) - /Users/jfrerich/dotfiles/vim/.vim/bundle/vim-snippets/snippets.snippets
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]
" let g:UltiSnipsSnippetDirectories=["mysnippets"]
let g:UltiSnipsEnableSnipMate=0
let g:fzf_preview_default_fzf_options = { '--reverse': v:true, '--preview-window': 'wrap' }


" FZF
" Default fzf layout
" - down / up / left / right
" let g:fzf_preview_use_dev_icons = 1
" let g:fzf_preview_dev_icon_prefix_string_length = 3
let g:fzf_layout = { 'down': '~65%' }
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true } }


" FZF-preview.vim
" highlight the line so it is easily visible
let $FZF_PREVIEW_COMMAND="COLORTERM=truecolor bat --style=numbers --color=always {} --theme OneHalfDark"

let $FZF_DEFAULT_OPTS = '--reverse' " revere the results with fzf command at top
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

" function! RipgrepFzf(query, fullscreen)
"   let exclude_fmt = "-g '!package.json' -g '!package-lock.json' "
"   let colors_fmt = " --color=always --colors 'match:bg:yellow' --colors 'match:fg:black' --colors 'match:style:bold' "
"   let command_fmt = "rg --line-number --no-heading " . exclude_fmt . colors_fmt . "--smart-case -- "
"   let initial_command = printf(command_fmt, shellescape(a:query))
"   let reload_command = printf(command_fmt, '{q}')
"   let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
"   call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
" endfunction
"
" command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   "rg -g '!package.json' -g '!package-lock.json' --line-number --no-heading --color=always --colors 'match:bg:yellow' --colors 'match:fg:black' --colors 'match:style:bold' --smart-case -- ".shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
" \ call fzf#vim#grep(
" \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
" \   fzf#vim#with_preview(), <bang>0)

" EasyMotion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
let g:EasyMotion_smartcase = 1 " Turn on case insensitive feature
nmap s <Plug>(easymotion-overwin-f)
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" autocmd FileType javascript set formatprg=prettier\ --stdin
" autocmd BufWritePre *.js :normal gggqG
" autocmd BufWritePre *.jsx,*.js,*.json,*.css,*.scss,*.less,*.graphql Prettier
"run prettier before saving
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" let g:poppy_point_enable = 1

" cheat.sh
let g:CheatSheetDefaultMode = 2

let g:explDetailedList=1 " show delailed list of files (ie. size, date)
let g:Perl_PerlRegexAnalyser = 'yes'

" " vim-gitgutter
" " don't overwrite other plugins signs
" let g:gitgutter_sign_priority=0
" let g:gitgutter_preview_win_floating=1
" let g:gitgutter_close_preview_on_escape=1
" highlight GitGutterAdd guifg=#009900 ctermfg=Green
" highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
" highlight GitGutterDelete guifg=#ff2222 ctermfg=Red

" vim-signify
"####################################
"This setting messes up snippets in jsx -> try fn snippet for example
" let g:signify_realtime = 1
highlight SignColumn ctermbg=NONE cterm=NONE guibg=NONE gui=NONE

" vim:foldmethod=marker:foldlevel=0


lua <<EOF
require('gitsigns').setup{
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map('n', ']c', function()
      if vim.wo.diff then return ']c' end
      vim.schedule(function() gs.next_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    map('n', '[c', function()
      if vim.wo.diff then return '[c' end
      vim.schedule(function() gs.prev_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    -- Actions
    map({'n', 'v'}, '<leader>hs', ':Gitsigns stage_hunk<CR>')
    map({'n', 'v'}, '<leader>hr', ':Gitsigns reset_hunk<CR>')
    map('n', '<leader>hS', gs.stage_buffer)
    map('n', '<leader>hu', gs.undo_stage_hunk)
    map('n', '<leader>hR', gs.reset_buffer)
    map('n', '<leader>hp', gs.preview_hunk)
    map('n', '<leader>hb', function() gs.blame_line{full=true} end)
    map('n', '<leader>tb', gs.toggle_current_line_blame)
    map('n', '<leader>hd', gs.diffthis)
    map('n', '<leader>hD', function() gs.diffthis('~') end)
    map('n', '<leader>td', gs.toggle_deleted)

    -- Text object
    map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
  end
}


require 'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "typescript"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "c", "rust" },
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
   rainbow = {
      enable = true,
          -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
              extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
                  max_file_lines = nil, -- Do not enable for files with more than n lines, int
                      -- colors = {}, -- table of hex strings
                          -- termcolors = {} -- table of colour name strings
                            
   },
   textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        -- You can optionally set descriptions to the mappings (used in the desc parameter of
        -- nvim_buf_set_keymap) which plugins like which-key display
        ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
      },
      -- You can choose the select mode (default is charwise 'v')
      --
      -- Can also be a function which gets passed a table with the keys
      -- * query_string: eg '@function.inner'
      -- * method: eg 'v' or 'o'
      -- and should return the mode ('v', 'V', or '<c-v>') or a table
      -- mapping query_strings to modes.
      selection_modes = {
        ['@parameter.outer'] = 'v', -- charwise
        ['@function.outer'] = 'V', -- linewise
        ['@class.outer'] = '<c-v>', -- blockwise
      },
      -- If you set this to `true` (default is `false`) then any textobject is
      -- extended to include preceding or succeeding whitespace. Succeeding
      -- whitespace has priority in order to act similarly to eg the built-in
      -- `ap`.
      --
      -- Can also be a function which gets passed a table with the keys
      -- * query_string: eg '@function.inner'
      -- * selection_mode: eg 'v'
      -- and should return true of false
      include_surrounding_whitespace = true,
    },
  },
}

require("whichkey_setup").config{
    hide_statusline = false,
        default_keymap_settings = {
                  silent=true,
                          noremap=true,
                              },
                                  default_mode = 'n',
}
EOF
