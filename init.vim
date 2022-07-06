call plug#begin()
"UI
Plug 'morhetz/gruvbox'

"FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"UTILS
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'

"SYNTAX
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
call plug#end()

"GRUVBOX
autocmd vimenter * ++nested colorscheme gruvbox

"FZF
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-f> :Rg<space>

"GITGUTTER
nnoremap <Leader>h :GitGutterLineHighlightsToggle<CR>
nnoremap <Leader>s :GitGutterPreviewHunk<CR>
nnoremap <Leader>u :GitGutterUndoHunk<CR>
nnoremap <Leader>] :GitGutterNextHunk<CR>
nnoremap <Leader>[ :GitGutterPrevHunk<CR>

"COC
let g:coc_global_extensions = ['coc-tsserver', 'coc-eslint', 'coc-html', 'coc-css', 'coc-json', 'coc-prettier']
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <Leader>p :CocCommand prettier.forceFormatDocument<CR>
inoremap <expr> <C-j> "\<C-n>"
inoremap <expr> <C-k> "\<C-p>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"VINEGAR
let g:netrw_fastbrowse=0

"CUSTOM KEYBINDINGS
nnoremap <A-h> :bp<CR>
nnoremap <A-l> :bn<CR>
nnoremap <A-w> :bw!<CR>

"CUSTOM SETS
set number
set ignorecase
set smartcase
set hidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
set signcolumn=yes
