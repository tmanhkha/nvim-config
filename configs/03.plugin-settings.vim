"NERDTree
map <C-b> :NERDTreeToggle<CR>
map <C-i> :NERDTreeFind<CR>

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
autocmd vimenter * NERDTree
"Theme
set background=dark
highlight Normal ctermbg=None
colorscheme dracula

set t_Co=256
if has("termguicolors")
  set termguicolors
  " set Vim-specific sequences for RGB colors
  if exists('$TMUX')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  endif
endif

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Prettier
"let g:prettier#autoformat = 1
"let g:prettier#config#print_width = 80
"let g:prettier#config#trailing_comma = 'es5'
"let g:prettier#config#jsx_bracket_same_line = 'true'
"let g:prettier#config#jsxSingleQuote = 'true'
"let g:prettier#config#bracket_spacing = 'true'
"let g:prettier#config#arrow_parens = 'always'
"autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.css,*.scss,*.json,*.md,*.vue,*.yaml,*.html,*.py Prettier

" AUTO CLOSE TAGS
let g:closetag_filenames = '*.html,*.jsx,*.tsx,*.js,*.vue,*erb'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.vue,*erb'
let g:closetag_filetypes = 'html,js,xhtml,phtml,jsx,tsx,vue,erb'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx,js,vue,erb'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'

"FONT
let g:enable_italic_font = 1
let g:enable_bold_font = 1

"CLOSE BUFFER
let bclose_multiple = 0

"MULTI COSUR
let g:multi_cursor_select_all_word_key = '<c-a>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_exit_from_insert_mode=1

" ======= Snippet =========
let g:UltiSnipsExpandTrigger="<c-c>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
" Use <C-l> for trigger snippet expand.
"=============end snippet==============

" Easymotion
let g:EasyMotion_smartcase = 1

"leaderF
let g:Lf_ShortcutF = '<C-P>'
let g:Lf_PreviewInPopup = 1

"fzf setting
nnoremap <silent> sf :Files<CR>
nnoremap <silent> sc :Rg<CR>
nnoremap <silent> sl :Lines<CR>
nnoremap <silent> sh :History<CR>

" =============================================================================
" FILETYPE
" =============================================================================
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading=1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global=1
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd BufNewFile,BufRead /tmp/mutt-* set filetype=mail
autocmd BufNewFile,BufRead /*.rasi setf css
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
" autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
" autocmd FileType ruby,eruby let g:rubycomplete_load_gemfile=1
" autocmd FileType ruby,eruby let g:rubycomplete_use_bundler=1
" autocmd BufRead,BufNewFile *.md setlocal spell

" =============================================================================
" DEVDOCS
" =============================================================================
let g:devdocs_filetype_map = {
      \   'ruby': 'rails',
      \   'javascript.js': 'jquery',
      \ }

nmap K <Plug>(devdocs-under-cursor)

" ============================================================================
" EDITORCONFIG
" =============================================================================
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']


" ============================================================================
" VIM-GUTENTAGS
" =============================================================================
set tags+=tags,.git/tags
let g:gutentags_enabled = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_resolve_symlinks = 1
let g:gutentags_ctags_tagfile = '.git/tags'
let g:gutentags_project_root = ['.git']
let g:gutentags_ctags_extra_args = ['--fields=+l']
let g:gutentags_add_default_project_roots = 0
let g:gutentags_ctags_executable_ruby = 'ripper-tags'
let g:gutentags_ctags_extra_args = ['--ignore-unsupported-options', '--recursive']

" =============================================================================
" VIM-SIGNATURE
" =============================================================================
let g:SignatureMarkTextHLDynamic = 1
let g:SignatureMarkerTextHLDynamic = 1

" =============================================================================
" INDENTLINE
" =============================================================================
" let g:indentLine_setColors = 0
let g:indentLine_char = '|'
let g:indentLine_fileTypeExclude = [ 'startify' ]
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:indentLine_char = '·'
" let g:indentLine_leadingSpaceEnabled = 1
" let g:indentLine_leadingSpaceChar = '·'

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
nmap <Leader>gv :GV<CR>


" =============================================================================
" COC
" =============================================================================
command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:coc_global_extensions = ['coc-solargraph', 'coc-highlight', 'coc-python', 'coc-yaml', 'coc-html', 'coc-css', 'coc-json',  'coc-xml', 'coc-snippets', 'coc-tsserver', 'coc-prettier', 'coc-flutter', 'coc-explorer', 'coc-markdownlint', 'coc-db']
autocmd CursorHold * silent call CocActionAsync('highlight')
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
let g:coc_status_error_sign = '•'
let g:coc_status_warning_sign = '•'

let g:coc_explorer_global_presets = {
\   '.vim': {
\   },
\   'floating': {
\      'position': 'floating',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\   },
\   'floatingLeftside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 50,
\   },
\   'floatingRightside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 50,
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }


" =============================================================================
" VIM-STARTIFY
" =============================================================================
let g:startify_files_number = 8
" let g:startify_session_autoload = 1
let g:startify_padding_left = 3
let g:webdevicons_enable_startify = 1
let g:startify_session_delete_buffers = 1 " delete all buffers when loading or closing a session, ignore unsaved buffers
let g:startify_session_remove_lines = ['setlocal', 'winheight'] " lines matching any of the patterns in this list, will be removed from the session file
let g:startify_session_sort = 1 " sort sessions by alphabet or modification time
let g:startify_update_oldfiles = 1
let g:startify_change_to_dir = 1 " when opening a file or bookmark, change to its directory
let g:startify_fortune_use_unicode = 1 " beautiful symbols
" let g:startify_padding_left = 3 " the number of spaces used for left padding
let g:startify_session_sort = 1 " sort sessions by alphabet or modification time"
let g:startify_change_to_dir = 0
let g:startify_session_dir = '~/.vim/session'
let g:startify_session_persistence = 1
let g:startify_bookmarks = [
      \ {'d': '~/Documents'},
      \ {'w': '~/DevWeb'},
      \ {'c': '~/.config/nvim/init.vim'},
      \ {'z': '~/.zshrc'}
      \ ]
let g:startify_custom_header = [
      \' ███╗   ███╗██╗  ██╗     ██╗██████╗ ███████╗',
      \' ████╗ ████║██║ ██╔╝     ██║██╔══██╗██╔════╝',
      \' ██╔████╔██║█████╔╝█████╗██║██║  ██║█████╗  ',
      \' ██║╚██╔╝██║██╔═██╗╚════╝██║██║  ██║██╔══╝  ',
      \' ██║ ╚═╝ ██║██║  ██╗     ██║██████╔╝███████╗',
      \' ╚═╝     ╚═╝╚═╝  ╚═╝     ╚═╝╚═════╝ ╚══════╝',
      \ ]
let g:startify_lists = [
      \ { 'type': 'bookmarks', 'header': ["  Bookmarks"]      },
      \ { 'type': 'files',     'header': ["  MRU Files"]            },
      \ { 'type': 'dir',       'header': ["  MRU Files in ". getcwd()] },
      \ { 'type': 'commands',  'header': ["  Commands"]       },
      \ ]

function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

" =============================================================================
" FZF
" =============================================================================
let g:fzf_colors =
      \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Todo', 'rounded': v:false } }

" ============================================================================
" EDITORCONFIG
" =============================================================================
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

autocmd FileType ruby nmap <F10> :call RunWith("ruby")<cr>
autocmd FileType json nmap <F10> :%!python -m json.tool<cr>

" =============================================================================
" SUBTYPES
" =============================================================================
" Ruby
augroup ruby_subtypes
  autocmd!
  autocmd BufNewFile,BufRead *.pdf.erb let b:eruby_subtype='html'
  autocmd BufNewFile,BufRead *.pdf.erb set filetype=eruby
augroup END

" Jquery
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" =============================================================================
" VIM-RUBOCOP
" =============================================================================
let g:vimrubocop_keymap = 0
let g:vimrubocop_confi = '.rubocop.yml'

" =============================================================================
" VIM-POLYGLOT
" =============================================================================
let g:polyglot_disabled = ['markdown']
