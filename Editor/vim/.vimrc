" .vimrc
" Based on Steve Fracnia's vimrc file (http://spf13.com)
" 
" Environment {
    " Basics {
        set nocompatible        " Use Vim settings rather than Vi settings
    " }
    "
    " Setup Bundle Support {
        " The next two lines ensure that the ~/.vim/bundle/ system works
        runtime! autoload/pathogen.vim
	    silent! call pathogen#helptags()
	    silent! call pathogen#runtime_append_all_bundles()
    " }
" }

" General {
    set background=dark        " Assume a dark background
    if !has('win32') && !has('win64')
        set term=$TERM    " Make arrow and other keys work
    endif
    
    syntax on  		            " Syntax highlighting
    filetype plugin indent on   " Automatically detect filetypes.
    scriptencoding utf-8

    set autowrite " automatically write a file when leaving a modified buffer

    " set viewoptions=folds,options,cursor,unix,slash
    " set virtualedit=onemore     " allow for cursor beyond last line

    set history=1000              " store a ton of history (default is 20)
    set ignorecase                " case insensitive search
    set smartcase                 " case sensitive when uc present
    " set spell                   " spell checking on

    " Setting up the directories {
        " set backup              " backups are nice...
        " set undofile            " so is persistent undo...
        
        " maximum number of changes that can be undone
        " set undolevels=1000

        " maximum number lines to save for undo on a buffer reload
        " set undoreload=10000

        " set backupdir=$HOME/.vimbackup//
        " set directory=$HOME/.vmswap//
        " set viewdir=$HOME/.vimviews//  " same for view files
      
        " Creating directories if they don't exist
        " silent execute '!mkdir -p $HVOME/.vimbackup'
        " silent execute '!mkdir -p $HOME/.vimswap'
        " silent execute '!mkdir -p $HOME/.vimviews'
        " au BufWinLeave * silent! mkview  "make vim
        " save view (state) (folds, cursor, etc)
        " au BufWinEnter * silent! loadview
        " make vim load view (state)
        " (folds, cursor, etc)j
    " }
" }

" Vim UI {
    color ir_black                  " load a color scheme
    " set tabpagemax=15             " only show 15 tabs
    set showmode                    " display the current mode
    set cursorline                  " highlight current line
    hi cursorline guibg=#333333     " highlight bg color of current line
    hi CursorColumn guibg=#333333   " highlight cursor

    " In many terminal emulators the mouse works just fine, thus enable it.
    "if has('mouse')
    "    set mouse=a
    "endif

    if has('cmdline_info')
        set ruler       " show the ruler
       
        " a ruler on steroids
        set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) 
        
        " Show partial commands in status line and selecte characters/lines
        " in visual mode
        set showcmd
    endif

    if has('statusline')
        set laststatus=2

        " Broken down into easily includeable segments
        set statusline=%<%f\                        " Filename
        set statusline+=%w%h%m%r                    " Options
        " set statusline+=%{fugitive#statusline()}  " Git Hotness
        set statusline+=\ [%{&ff}/%Y]               " filetype
        set statusline+=\ [%{getcwd()}]             " current dir

        " ASCII Hexadecimal value of char
        " set statusline+=\ [A=\%03.3b/H=\%02.2B]

        " Right aligned file nav info
        set statusline+=%=%-15.(%l/%L\ col=%c%)
    endif

    "set colorcolumn=80              " Vertical line guide
    set backspace=indent,eol,start  " backspace for dummys
    set linespace=0                 " no extra space between rows
    set nu                          " Line numbers on
    set showmatch                   " Show matching parenthesis/brackets
    set incsearch                   " find as you type search
    set hlsearch                    " Highlight serch terms
" }

" Formatting {
    set wrap                " Wrap long lines
    set autoindent          " indent at the same level as previous line
    set shiftwidth=4        " Use indents of 4 spaces
    set expandtab           " tabs are spaces, not tabs
    set tabstop=4           " an indentation every four columns
    set softtabstop=4       " let backspace delete indent
    " set matchparis+=<:>	" match, to be used with %
    set pastetoggle=<F12>	" pastetoggle (sane indentation on pastes)
    "set comments=s1:/*,mb:*,elx:*/ " autoformat comment blocks
      
    " Remove trailing whitespaces and ^M chars
    autocmd FileType c,cpp,java,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
" }
