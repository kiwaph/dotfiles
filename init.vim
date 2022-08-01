call plug#begin()
"UI
Plug 'morhetz/gruvbox'

"FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"UTILS
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

"SYNTAX
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
call plug#end()

"GRUVBOX
autocmd vimenter * ++nested colorscheme gruvbox

"FZF
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'
let $FZF_DEFAULT_OPTS='--bind ctrl-y:preview-up,ctrl-e:preview-down,ctrl-u:preview-page-up,ctrl-d:preview-page-down'
nnoremap <C-p> :Files<CR>
nnoremap <C-g> :GFiles!?<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-f> :Rg!<space>

"COC
let g:coc_global_extensions = ['coc-tsserver', 'coc-eslint', 'coc-html', 'coc-css', 'coc-json', 'coc-prettier']
let g:coc_user_config = {'diagnostic.checkCurrentLine' : 1}
nmap gd <Plug>(coc-definition)
nmap gr <Plug>(coc-references)
nmap gp :CocCommand prettier.forceFormatDocument<CR>
inoremap <expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-n>"
inoremap <expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"
inoremap <expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"BUFFERS
nnoremap <A-h> :bp<CR>
nnoremap <A-l> :bn<CR>
nnoremap <A-w> :bw!<CR>

"NETRW
nnoremap - :Ex<CR>
let g:netrw_liststyle=0
let g:netrw_banner=0

"SETS
set number
set ignorecase
set smartcase
set signcolumn=yes
set nowrap
set hidden
set nobackup
set noswapfile
set nowritebackup
set updatetime=300
set shortmess+=c
