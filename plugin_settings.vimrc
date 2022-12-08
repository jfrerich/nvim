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

" python-mode
"####################################
" Updating Python Mode can cause it to break and I've done it multiple
" times! The best fix I found is to restore an old copy of the bundle/python-mode
" folder from Time Machine backup.
" supposedly, the following pinned command will tell vundle to not update this
" folder again, if PluginUpdate is run
" an
let g:pymode_syntax = 1
" let g:pymode_syntax_all = 1
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

" rainbow_parenthesis
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
" RainbowParentheses does not work with Plugin 'pangloss/vim-javascript'
" parenthesis aren't colored.  Works for all others and like the pangloss
" syntax better than having colored parenlike the parenthesis more than vim-javascripts
let g:rbpt_max = 16
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" let g:poppy_point_enable = 1

" cheat.sh
let g:CheatSheetDefaultMode = 2

let g:explDetailedList=1 " show delailed list of files (ie. size, date)
let g:Perl_PerlRegexAnalyser = 'yes'

" vim-gitgutter
" don't overwrite other plugins signs
let g:gitgutter_sign_priority=0
let g:gitgutter_preview_win_floating=1
let g:gitgutter_close_preview_on_escape=1
highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red

" vim-signify
"####################################
"This setting messes up snippets in jsx -> try fn snippet for example
" let g:signify_realtime = 1
highlight SignColumn ctermbg=NONE cterm=NONE guibg=NONE gui=NONE

" vim:foldmethod=marker:foldlevel=0
