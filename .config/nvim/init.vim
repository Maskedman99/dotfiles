call plug#begin("~/.nvim/plugged")
Plug 'dracula/vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()

"" Theme configuration
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula

"" Make neovim transparent
hi Normal guibg=NONE ctermbg=NONE

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

"" Show line numbers
set number

"" Add mouse support
set mouse=a
