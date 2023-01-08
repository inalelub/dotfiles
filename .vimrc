" PLUGIN LIST

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'	" Shows a nice status line at the bottom
Plug 'tpope/vim-fugitive'   " Git on vim's command line
Plug 'scrooloose/nerdtree'	" File system explorer
Plug 'ryanoasis/vim-devicons'	" Icons for file types
Plug 'rafi/awesome-vim-colorschemes'	" Color schemes for vim
Plug 'airblade/vim-gitgutter'	" Shows git diff in the sign column
Plug 'neoclide/coc.nvim', {'branch': 'release'}	" Extension & language server host, just like VSCode extension
Plug 'majutsushi/tagbar'	" Display tags in a window
Plug 'xuyuanp/nerdtree-git-plugin'	" Shows git status' in nerdtree
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }    " Markdown preview 
Plug 'sheerun/vim-polyglot'	" Syntax support
Plug 'tpope/vim-surround'	"To easily edit, change or delete your surronding pairs [cs'<q> which means change the surronding '' to <q> </q>]
Plug 'scrooloose/syntastic'	" Syntax checker
Plug 'junegunn/fzf'	" fzf for vim
Plug 'rust-lang/rust.vim'	" Vim configuration for rust
Plug 'jiangmiao/auto-pairs'	" Autopairs enable
Plug 'honza/vim-snippets'	" Snippets

call plug#end()

" BASIC CONFIGURATIONS 

let mapleader=" "
set nocompatible    " Compatibility for vim only
set autoindent	" Auto-indent new lines
set cindent	" Use 'C' style program indenting
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set tabstop=4	" Number of spaces for a tab in a file
set softtabstop=4	" Number of spaces per Tab
set number	" Show line numbers
set showmatch	" Highlight matching brace
set encoding=utf-8  " Set the character encoding
set wrap    " Automatically wrap text
set mouse=a " Enable the use of a mouse
set wildmenu	" Command line completion are shown 
set updatetime=300	" Having longer update times 
set ignorecase    " Ignoring case when searching a word
set relativenumber    " Set relative number
set showmode    " we don't need things like --INSERT--
set iskeyword+=-	" delete's the whole word if the word is hyphenated
set swapfile    " creates a swapfile
set timeoutlen=500
syntax on	" Syntax highlighting
filetype plugin indent on	" Decect file type
filetype plugin on	" Decect file type

" KEYMAP RECONFIGURATIONS

" Colorscheme
:colorscheme angr

" Remapping the keycombo jj as a shortcut out of insert mode
inoremap jj <Esc>
vnoremap jj <Esc>

" Remapping the save file option
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>

" To move around in history
nnoremap <leader>[ <C-o>
nnoremap <leader>] <C-i>

" To search & replace a word I am currently in
nnoremap <leader>rw :%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>

" To move down & up a page but centered
nnoremap <M-j> <C-d>zz
nnoremap <M-k> <C-u>zz

" Opening split panes
nnoremap <leader>V :vsplit
nnoremap <leader>S :split

" Better window navigation
nnoremap <C-h> <C-w>h 
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Resize w arrows
nnoremap <C-Up> :resize +2<CR>
nnoremap <C-Down> :resize -2<CR>
nnoremap <C-Left> :vertical resize -2<CR>
nnoremap <C-Right> :vertical resize +2<CR>

" Navigate buffers
nnoremap <S-l> :bnext<CR>
nnoremap <S-h> :bprevious<CR>

" Let's the cursor remain in the same place after using J to append the text below to your current line
nnoremap J mzJ`z

" Allows for search terms to stay in the middle
nnoremap n nzzzv
nnoremap N Nzzzv

" Never press Q
nnoremap Q <nop>

" Stay indent mode
vnoremap < <gv
vnoremap > >gv

" Keep the yanked term
vnoremap p "_dP
" keymap("x", "<leader>p", '\"_dP', opts)

" Moving a block of code that you've highlighted
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
" keymap("x", "K", ":m '<-2<CR>gv=gv", opts)


" PLUGIN CONFIGURATIONS 

" Airline
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1

" Tagbar
nnoremap <silent> <C-b> :TagbarToggle<CR>

" NerdTree
nnoremap <leader>e :NERDTreeToggle<CR>

" NerdTree Git 
let g:NERDTreeGitStatusUseNerdFonts = 1

" Conquer of Completion
nmap <F2> <Plug>(coc-rename)
nmap gr <Plug>(coc-reference)
nmap gi <Plug>(coc-implementation)
nmap gd <Plug>(coc-definition)

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

let g:coc_global_extensions = ['coc-json', 'coc-html', 'coc-snippets', 'coc-prettier', 'coc-lightbulb', 'coc-eslint', 'coc-emmet', 'coc-tsserver', 'coc-pyright', 'coc-jedi', 'coc-css', 'coc-clangd', 'coc-java', 'coc-git', 'coc-python']

" Markdown Preview
let g:mkdp_refresh_slow = 1

" Bufferline
nnoremap <leader>bd :Bdelete!<cr>
