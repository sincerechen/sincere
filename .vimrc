let mapleader=" "
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
syntax on
set number
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
set incsearch
set ignorecase
set smartcase
set report=0

"show space
set list
set listchars=tab:>-,trail:-

set foldmethod=marker
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map tt :Tlist<CR>
map ca :cs add /home/sincere/test/cscope.out<CR>
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

"add commit when we modify code
noremap <LEADER>i O/*SIMCOM chenzhen <++> begin*/<ESC>
noremap <LEADER>a /<++><CR>:nohlsearch<CR>c4l

noremap <LEADER>c :cs find c <C-R>=expand("<cword>")<CR><CR>
noremap <LEADER>d :cs find d <C-R>=expand("<cword>")<CR><CR>
noremap <LEADER>s :cs find s <C-R>=expand("<cword>")<CR><CR>

"direct edit vimrc quick
noremap <LEADER>e :e ~/.vimrc<CR>
noremap <LEADER><CR> :nohlsearch<CR>
noremap J 5j
noremap K 5k
inoremap mm <ESC>
nnoremap W <C-w>w
:inoremap ( ()<ESC>i
:inoremap { {<CR>}<ESC>O
:inoremap [ []<ESC>i
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
:inoremap < <><ESC>i

":set tags=/home/sincere/test/tags
:set tags=/home/sincere/project/tags


call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'lfv89/vim-interestingwords'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'
call plug#end()

let g:SnazzyTransparent = 1
color snazzy


"Undotree
nnoremap <LEADER>l :UndotreeToggle<CR>
"let g:undotree_DiffAutoOpen = 1
"let g:undotree_SetFocusWhenToggle = 1
"let g:undotree_ShortIndicators = 1

"NERDTREE
map T :NERDTreeToggle<CR>

"FZF
nnoremap <LEADER>f :Files<CR>
nnoremap <LEADER>r :Ag<CR>
"Easymotion
nmap ss <Plug>(easymotion-s2)
"auto return the place where you leave last time
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line ("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
