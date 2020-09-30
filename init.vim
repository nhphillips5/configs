syntax on

" Leader
let mapleader = " "

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set noerrorbells
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set nowritebackup
set history=50
set spell
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set modelines=0   " Disable modelines as a security precaution
set nomodeline
set smartindent
set nowrap
set smartcase
set undodir=~/.vim/undodir
set undofile

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Plugins
call plug#begin('~/.config/nvim/bundle')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'Shougo/deoplete.nvim'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}


call plug#end()

" Softtabs, 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Numbers
set number
set numberwidth=5
set relativenumber

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>

" Get off my lawn
nnoremap <Left> :echoe "Git Gud"<CR>
nnoremap <Right> :echoe "Git Gud"<CR>
nnoremap <Up> :echoe "Git Gud"<CR>
nnoremap <Down> :echoe "Git Gud"<CR>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" YCM
" The best part
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>

" Yanking to the clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" Running Python Scripts Within Vim
xnoremap <leader>r :w !python<cr>
