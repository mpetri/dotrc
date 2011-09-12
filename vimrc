" " shows status line with filename, column/row coords, dirty bit
set laststatus=2
" " provide two lines for status messages at the bottom of the screen
set cmdheight=2
" " shows the line/column information for the current location of the cursor
set ruler
" " sets xterm title to display the name of the file currently being edited
set title
" " shows mode (i.e. insert mode etc)
set showmode
" " shows the keystrokes currently waiting to be processed
set showcmd
" " flashes the screen instead of beeping the computer
set novisualbell
" " searches are incremental
set incsearch
" " show matching bracket briefly
set showmatch
" " ignore case
set ignorecase smartcase
" " proper vim mode
set nocompatible
" " show long lines as they are
set nowrap
" " character to mark lines that exceed 80 characters
set listchars+=extends:@
" " tabstops set to 4 space
set tabstop=4
" " tabstops are converted to spaces, ensuring the file always looks the same.
set expandtab
" " width of an indent level
set shiftwidth=4
" " round indents off to shiftwidth
set shiftround
" " autoformats text, wraps lines, autoindents, continues comments etc.
set formatoptions=tcroqwn
" " line numbers
set number
set numberwidth=3
" " allows backspace to work across lines and before the start of insert.
set backspace=indent,eol,start
" " syntax colouration and highlighting
colorscheme zenburn
syntax on
set t_Co=256
" " write a backup of the current file (with an appended ~) on each write
set backup
set backupdir=~/.vim/backup/
" " tab autocompletion in the command space
set wildchar=<TAB>
set wildmenu
set wildmode=longest,full
" " filetype specific commands.
set autoindent
filetype plugin indent on
" " history size
set history=1024
" " faster redraw
set ttyfast
" When editing a file, always jump to the last known cursor position.
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
augroup END
" For actual C (not C++) programming where comments have explicit end
" characters, if starting a new line in the middle of a comment automatically
" insert the comment leader characters:
autocmd FileType c set formatoptions+=ro

" For C programming, have automatic indentation:
autocmd FileType c set cindent

" encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,latin1


