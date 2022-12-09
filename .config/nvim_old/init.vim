" =================== PLUGINS ======================
call plug#begin()
" Color Schemes
Plug 'dracula/vim',{'as':'dracula'}
Plug 'chuling/ci_dark'
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'ap/vim-css-color'
Plug 'kovetskiy/sxhkd-vim'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ycm-core/YouCompleteMe'

call plug#end()

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/',"git --git-dir=%s/.git ls-files -oc --exclude-standard"]
let g:ctrlp_use_caching = 0




" ==================== CONFIG ====================
set number              " Show line numbers 
set relativenumber      " Show relative line numbers
set history=1000        " Store lots of :cmdline history
set showcmd             " Show incomplete commands down the bottom
set showmode            " Show current mode down the bottom
set visualbell          " No sounds
set autoread            " Reload files changed outside nvim
set expandtab           " Use spaces instead of tabs
set tabstop=4           " Tab length
set softtabstop=4       " Length to use when editing text (eg. TAB and BS keys)
set shiftwidth=4         " Length to use when shifting text (eg. <<, >> and == commands)
"set colorcolumn=80      " Indent guide at 80 columns
set incsearch           " Find the next match as we type the search
" set hlsearch            " Highlight searches by default
set ignorecase          " Ignore case when searching...
set smartcase           " ...unless we type a capital
set smartindent         " Tries to indent thing for you
set undodir=~/.config/nvim/undodir
set undofile            " Undo history is kept on a file
set nohlsearch 



syntax on               " Turn on syntax highlighting

colorscheme dracula     " Set colorscheme



augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END


" Use language‐specific plugins for indenting
filetype plugin indent on 

"This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
set hidden

" Show preview when substituting strings.
" :%s/<word>/<new_word>g
set inccommand=split

" Disable all backup files, never used them
set nobackup
set nowritebackup
set noswapfile

" Fix cursor
set guicursor=

" Use 24-bit (true-color) mode in Vim/Neovim.
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

" Indent guide
" set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

highlight LineNr guibg=0 guifg=white

