call plug#begin("~/.nvim/plugged")
Plug 'dracula/vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"" coc configuration
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-svelte']

"" Theme configuration
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula

"" NERDTree configuration
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeWinSize = 20
let g:NERDTreeStatusline = ''
" Open NERDTree automatically when nvim starts
autocmd vimenter * NERDTree
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Open and Close NERDTree
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
" Change focus to NERDTree
map <silent> <C-n> :NERDTreeFocus<CR>

"" nerdtree-git-plugin configuration
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

"" Show line numbers
set number

"" Mouse support
set mouse=a

"" Clipboard
set clipboard+=unnamedplus

"" Autointend and Smartintend
set autoindent smartindent

"" Make neovim transparent
hi Normal guibg=NONE ctermbg=NONE
