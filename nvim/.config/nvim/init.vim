" Setup Vundle First
set nocompatible
filetype off

" One Vundle Please
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" Ensure we are using an isolated version
" of python, due to python development
let g:python_host_prog = '/home/byron/.virtualenvs/neovim2/bin/python'
let g:python3_host_prog = '/home/byron/.virtualenvs/neovim3/bin/python'

" My Plugins
Plugin 'VundleVim/Vundle.vim'

" Pretty Stuff
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-syntastic/syntastic'
Plugin 'sickill/vim-monokai'
Plugin 'mhinz/vim-signify'

" Misc
Plugin 'godlygeek/tabular'
Plugin 'slim-template/vim-slim'
Plugin 'rust-lang/rust.vim'
Plugin 'daeyun/vim-matlab'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'jreybert/vimagit'

" Pandoc & Friends
Plugin 'lervag/vimtex'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'

" Rubae
Plugin 'skalnik/vim-vroom'
Plugin 'tpope/vim-endwise'
Plugin 'ngmy/vim-rubocop'

" Spelling
Plugin 'rhysd/vim-grammarous'

" JavaScript
Plugin 'trkw/yarn.vim'
Plugin 'pangloss/vim-javascript'

" Misc Web
Plugin 'digitaltoad/vim-pug'

" TypeScript
Plugin 'Shougo/deoplete.nvim'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'mhartington/nvim-typescript'

call vundle#end()
filetype plugin indent on
" End Vundle Setup

" Begin personal preferences
syntax enable

set softtabstop=4
set backup             " keep a backup file (restore to previous version)
set undofile           " keep an undo file (undo changes after closing)
set ruler              " show the cursor position all the time
set showcmd            " display incomplete commands
set cursorline         " highlight current line
set number             " show line numbers
set lazyredraw         " only redraw when required
set showmatch          " show matching brackets
set incsearch          " dont need to use enter
set hlsearch           " highlights search matches
set wildmenu           " visual autocomplete
set relativenumber     " Relative line numbers
set backspace=2        " Feels like most other apps
set history=50         " It's more than what most people need
set autowrite          " Cause I ain't scared 
set tabstop=2 shiftwidth=2 expandtab "This for some indents and stuff
set ww+=<,>            " I expect the cursor to move
set autoread           " Autoread files

" Check fo file changes
au CursorHold * checktime

" eslint
let g:syntastic_javascript_checkers=['eslint']            " Use eslint as checker
let g:syntastic_javascript_eslint_args = ['--fix']        " Run eslint with --fix
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint' " Use node_module executable
function! SyntasticCheckHook(errors)
  checktime
endfunction

" Clear the search
nnoremap <leader><space> :nohlsearch<CR>

" Toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

" Escape without esc
imap ii <Esc>

" NerdCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCompactSexyComs = 1
let g:NERDTrimTrailingWhitespace = 1

" Since I'm a JS kid
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"
set conceallevel=1

" Enable Deoplete for TypeScript
let g:deoplete#enable_at_startup = 1

