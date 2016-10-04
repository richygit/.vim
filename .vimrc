set nocompatible

set number
set ruler
syntax on

" setup pathogen - will include vim plugins in bundle folder on runtimepath
execute pathogen#infect()

" Set encoding
set encoding=utf-8

" Whitespace stuff
set wrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·
set cindent
set smartindent
set autoindent

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
set guifont=Bitstream\ Vera\ Sans\ Mono:h4

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

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

" clear search highlighting by hitting spacebar
map <Space> :noh<CR>

" scroll on wrapped lines too
:nmap j gj
:nmap k gk

" ensure you can create a swap file!
set directory=.,$TEMP
set backupdir=.,$TEMP

" ctrl-p configs
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode=2
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

" nerd tree key mapping
let NERDTreeChDirMode=0
nnoremap <leader>n :NERDTreeToggle .<CR>
nmap F :NERDTreeFind<CR>

" ack.vim key mapping
nmap <D-F> :Ack<space>

" set theme
colorscheme dawn

" for nerdcommeter
filetype plugin indent on

" insert newline by pressing enter or shift-enter
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" disable annoying balloons with jibberish text (hover)
let g:syntastic_enable_balloons = 0
" Turn off jslint errors by default
let g:JSLintHighlightErrorLine = 0

" syntastic for javascript
let g:syntastic_javascript_checkers = ['eslint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Mimic :grep and make ag the default tool.
let g:grepper = {
    \ 'tools': ['ack', 'grep', 'git'],
    \ 'open':  0,
    \ 'jump':  1,
    \ }
