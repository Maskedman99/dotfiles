call plug#begin("~/.nvim/plugged")
Plug 'dracula/vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
call plug#end()

"" coc configurations
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-svelte']

"" theme configurations
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula

"" NERDTree configurations
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeWinSize = 38
let g:NERDTreeStatusline = ''
" Open NERDTree automatically when nvim starts
autocmd vimenter * NERDTree
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Open and Close NERDTree
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
" Change focus to NERDTree
map <silent> <C-n> :NERDTreeFocus<CR>

"" nerdtree-git-plugin configurations
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

"" vim-nerdtree-syntax-highlight configurations
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

"" vim-prettier configurations
" Enable auto formatting of files that have "@format" or "@prettier" tag
let g:prettier#autoformat = 1
" Allow auto formatting for files without "@format" or "@prettier" tag
let g:prettier#autoformat_require_pragma = 0

"" vim-airline configurations
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#branch#enabled = 1

"" Show line numbers
set number

"" Mouse support
set mouse=a

"" Clipboard
set clipboard+=unnamedplus

"" Tab
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

"" Make neovim transparent
hi Normal guibg=NONE ctermbg=NONE
