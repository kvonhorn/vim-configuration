call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>
autocmd FileType java :TagbarOpen<CR>

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=lightgrey   ctermbg=3
hi IndentGuidesOdd  guibg=lightgrey   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=white       ctermbg=4
hi IndentGuidesEven guibg=white       ctermbg=4

set tags=tags;/

colorscheme default
set expandtab   " Spaces, not tabs
set shiftwidth=2
set softtabstop=2
set tabstop=8   " Real tabs shift 8 spaces
set smarttab
set lbr
set tw=500
set ai          " Auto indent
set si          " Smart indent
set wrap        " Wrap lines
set numberwidth=5
if has("gui_running")
    set columns=165
    set lines=40
    set gfn=Consolas:h12
endif

set number      " Line numbers
set ruler       " Show current position

set ignorecase  " Ignore case when searching
set smartcase
set hlsearch    " Highlight search
set incsearch

set magic       " Set magic for regexes
set showmatch   " Show matching brackets

set ttyfast
set nocompatible

set encoding=utf8
try
    lang en_US
catch
endtry

set ffs=unix,mac,dos    " Default file types
syntax enable           " Enable syntax highlighting
set shell=/bin/zsh
set fileformats=unix
set ff=unix
filetype on
filetype indent on
filetype plugin on

set nobackup
set nowb
set noswapfile
