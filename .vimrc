
" -- PLUGINS
"
call plug#begin('~/.vim/plugged')

" airline info
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" scrooloose/nerdtree fs browsing tree
Plug 'scrooloose/nerdtree'

" arcticicestudio/nord-vim
Plug 'arcticicestudio/nord-vim'

" lumontec/nord-vim
Plug 'https://github.com/lumontec/nord-vim-light.git'

" vim-polyglot
Plug 'sheerun/vim-polyglot'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()



" -- CONFIGURATIONS 
"
"-- show side numbers
set number

"-- set folding 
set foldmethod=syntax "syntax highlighting items specify folds
set foldcolumn=1 "defines 1 col at window left, to indicate folding
let javaScript_fold=1 "activate folding by JS syntax
set foldlevelstart=99 "start file with all folds opened

"-- save content to system clipboard
set clipboard=unnamedplus

"-- setup undo 
set undodir=~/.vim/undodir
set undofile

" tab completion list
set wildmode=longest,list,full
set wildmenu

" keeps the last cursor position after vim close
source $VIMRUNTIME/vimrc_example.vim

" disable filetype indent
filetype indent off

set backupcopy=yes
set nobackup
"set nowritebackup

"c, cpp autoformat
autocmd FileType c,cpp setlocal equalprg=clang-format


" -- REMAPS
"
" Coc remaps for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap arrow keys to resize window
nnoremap <Up>    :resize -2<CR>
nnoremap <Down>  :resize +2<CR>
nnoremap <Left>  :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>

" Remap fzf search
nnoremap <C-p> :Files<CR>
nnoremap <C-l> :Buffers<CR>
nnoremap <C-g> :GFiles<CR>
nnoremap <C-f> :Rg! 

" Remap for NERDTree
map <silent> <C-t> :NERDTreeToggle<CR>


" -- STYLES
"  
" ignore terminal gui colors
set termguicolors
set background=light

" colorschemes
" syntax enable
" colorscheme nord
colorscheme nordlight
" colorscheme solarized
"colorscheme gruvbox

" Customize fzf colors to match your color scheme
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


" -- CUSTOM FUNCTIONS
"  
" customized fold
function! MyFoldText()
    let nl = v:foldend - v:foldstart + 1
    let comment = substitute(getline(v:foldstart),"^ *","",1)
    let linetext = substitute(getline(v:foldstart+1),"^ *","",1)
    let txt = '+ ' . comment . ': length ' . nl
    return txt
endfunction
set foldtext=MyFoldText()

