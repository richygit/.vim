set nocompatible

set number
set ruler
syntax on

" Set encoding
set encoding=utf-8

" Whitespace stuff
set wrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

" Use modeline overrides
set modeline
set modelines=10

" Default font
set guifont=Bitstream\ Vera\ Sans\ Mono:h7

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Turn off jslint errors by default
let g:JSLintHighlightErrorLine = 0

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" % to bounce from do to end etc.
runtime! macros/matchit.vim

" Show (partial) command in the status line
set showcmd

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

" clear search highlighting by hitting escape key
nnoremap <CR> :noh<CR><CR>

" scroll on wrapped lines too
:nmap j gj
:nmap k gk

" setup pathogen - will include vim plugins in bundle folder on runtimepath
execute pathogen#infect()

" ensure you can create a swap file!
set directory=.,$TEMP
set backupdir=.,$TEMP

" ctrl-p configs
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode=2
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

" nerd tree key mapping
set autochdir
let NERDTreeChDirMode=2
map <C-n> :NERDTreeToggle<CR>

" ack.vim key mapping
nmap <D-F> :Ack<space>

" set theme
colorscheme dawn

" closetag autoload
:let g:closetag_html_style=1
:au Filetype html,xml,xsl source ~/.vim/bundle/closetag.vim 
