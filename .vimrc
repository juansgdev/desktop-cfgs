set autoindent
set smartindent
set smarttab
set nowrap
set cursorline
set number
set relativenumber
set expandtab        " Usa espaços no lugar de tabulações
set tabstop=4        " Define o tamanho da tabulação
set shiftwidth=4     " Usa 4 espaços para a indentação
set softtabstop=4    " Usa 4 espaços para o preenchimento de tabulação

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'

call plug#end()

" CONFIGURAÇÃO DO NERDTree
nnoremap <C-e> :NERDTreeFocus<CR>
nnoremap <C-o> :NERDTree<CR>

" CONFIGURAÇÃO DO COC SNIPPETS ABAIXO
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-t> :terminal<CR>

