let g:mapleader=' '
let g:lightline#bufferline#enable_devicons = 1
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='
let g:tex_flavor = "latex"
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component_expand': {'buffers': 'lightline#bufferline#buffers'},
      \ 'component_function': {'gitbranch': 'fugitive#head'},
      \ 'component_type': {'buffers': 'tabsel'},
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ [ 'buffers' ] ],
      \   'right': [ [ 'gitbranch' ] ]
      \ },
      \ }
" showtabline
set laststatus=2
set showtabline=2

" Search Case settings
set ignorecase
set smartcase
set incsearch
set hlsearch

set lazyredraw

" autoread
set autoread

" if hidden is not set, TextEdit might fail.
set hidden

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" split defaults
set splitright
set splitbelow

" indent defaults
set expandtab
set ts=4
set sw=4
