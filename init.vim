syntax on

" UI options
set nocompatible
set cursorline " Highlight the current line
set number " Enable line numbers
set showmatch " Show matching brackets
set wildmode=list:longest
set ff=unix " Display DOS line endings

" Indentation options
set list listchars=tab:»\ ,trail:·
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4
set smartindent
set autoindent
filetype on
filetype plugin on
filetype indent on

" Clipboard options
set clipboard+=unnamedplus " Yanks go on clipboard instead
"set paste pastetoggle=<F10>
set viminfo='50,<1000,s100,h " Set max buffer size to 1000 lines (default 50)

" Search options
set ignorecase
set smartcase
" Use <C-L> to clear the highlighting of hlsearch
nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>

" Scrolloff options
set scrolloff=1
set sidescrolloff=5

set lazyredraw

" Remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Alias "write as sudo" as :w!!
cmap w!! w !sudo tee > /dev/null %

" Plugins
call plug#begin("~/.config/nvim/plugged")
	Plug 'jiangmiao/auto-pairs'
	Plug 'scrooloose/syntastic'
	Plug 'scrooloose/nerdtree'
	Plug 'bling/vim-airline'
	Plug 'tpope/vim-fugitive'
	Plug 'octol/vim-cpp-enhanced-highlight', {'for': 'cpp'}
	Plug 'nathanaelkane/vim-indent-guides'
	Plug 'fatih/vim-go', {'for': 'go'}
	Plug 'tomasr/molokai'
call plug#end()

nmap <silent><C-e> :NERDTreeToggle<CR>
imap <silent><C-e> <C-o>:NERDTreeToggle<CR>

colorscheme molokai
set background=dark
let g:cpp_class_scope_highlight = 1
let g:airline_powerline_fonts = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:cpp_experimental_template_highlight = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
let g:vim_markdown_folding_disabled=1 " Disable markdown folding
let g:syntastic_python_flake8_args = "--ignore=W191,E702 --max-line-length=92"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
if exists('g:loaded_fugitive')
	set statusline+=%{fugitive#statusline()}
endif
