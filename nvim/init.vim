"Install vim-plug if not instalnalmed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" --- Plugins ---
call plug#begin()

Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release' }
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'ryanoasis/vim-devicons'
Plug 'dhruvasagar/vim-table-mode'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'

call plug#end()

source /usr/share/vim/vimfiles/plugin/skim.vim

source autocommand.vim
source keybindings.vim
source settings.vim
source tools.vim
source functions.vim

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Use `:Format` for format current buffer
command! -nargs=1 Format :call CocAction('format')

" Use `:Fold` for fold current buffer
command! -nargs=? Fold :call   CocAction('fold', <f-args>)

" Using CocList
"
" Show all diagnostics
nnoremap <silent> <leader>d  :<C-u>CocList diagnostics<cr>
" Show commands
nnoremap <silent> <leader>c  :<C-u>CocList commands<cr>
" Search workspace symbols
nnoremap <silent> <leader>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader>k  :<C-u>CocPrev<CR>
