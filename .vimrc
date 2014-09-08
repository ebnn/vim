" pathogen
execute pathogen#infect()

" use the Solarized color scheme for syntax highlighting
syntax enable
set background=dark
if !has("gui_running")
  let g:solarized_termtrans=1
else
  set lines=35 columns=100
endif

colorscheme solarized
filetype on

" use C++11 syntax file
au BufNewFile,BufRead *.cpp set syntax=cpp11
au BufNewFile,BufRead *.hpp set syntax=cpp11

set showmode " show visual/normal/insert mode
set cursorline " highlight current line
set nu " show line numbers
set ignorecase " ignore case in searches
set incsearch " incremental search
set hlsearch " highlight searches
set ruler " show cursor position
set lazyredraw " possible optimization?
set hidden " don't close buffers
set colorcolumn=80 " 80 character margin
set wildmenu " autocomplete filenames
set wildignore=*.swp,*.bak,*.pyc,*.class " ignore certain files

" folding
set foldenable
set foldlevelstart=99
set foldnestmax=10
set foldmethod=indent
nnoremap <space> za

" 2 space indenting
set autoindent
if has("autocmd")
   filetype plugin indent on
endif
set expandtab
set smarttab

set shiftwidth=2
set softtabstop=2

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" 4 space indent for Python code
autocmd FileType python set tabstop=8|set shiftwidth=4|set expandtab

" quicker way to exit to normal mode
inoremap jk <Esc>

" type {{ to open new code block
inoremap {{ {<CR>}<Esc>O

" underscore text object
vnoremap i_ <Esc>T_vt_
vnoremap a_ <Esc>F_vf_
onoremap i_ :normal vi_<CR>
onoremap a_ :normal va_<CR>

" toggle paste using F2
set pastetoggle=<F2>

" clear search using //
nmap <silent> // :nohlsearch<CR>

" vimsneak plugin
let g:sneak#use_ic_scs = 1 " case insensitive

" CtrlP plugin
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
