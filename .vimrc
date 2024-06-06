et number
set clipboard=unnamedplus
set incsearch
set smartcase
set noswapfile

let mapopts = 'noremap silent'

inoremap <silent> jk <ESC>

" Damian Conway
noremap ; :
noremap : ;
vnoremap ; :
vnoremap : ;

nnoremap L $
nnoremap H ^
vnoremap L $
vnoremap H ^

nnoremap <leader>sf :%s///gI<Left><Left><Left><Left><C-f>
vnoremap <leader>sf :s///gI<Left><Left><Left><Left><C-f>

nnoremap <C-h> :wincmd h<CR>
nnoremap <C-l> :wincmd l<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>

" Leave terminal mode
tnoremap <C-Space> <C-\><C-n>
