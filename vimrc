set nu
set mouse=a
set tabstop=4
set autoindent
set smartindent
syntax on
set showmatch

xnoremap <M-Up> :move '<-2<CR>gv=gv
xnoremap <M-Down> :move '>+1<CR>gv=gv
nnoremap <M-Up> :m .-2<CR>==
nnoremap <M-Down> :m .+1<CR>==
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>

inoremap <expr> <CR> InsertBraces()
function! InsertBraces()
  " Obtenir la ligne courante
  let l:line = getline('.')
  " Obtenir la colonne courante
  let l:col = col('.')
  " Vérifier si les deux caractères autour du curseur sont '{}'
  if l:col > 1 && l:col <= len(l:line) && l:line[l:col - 2] == '{' && l:line[l:col - 1] == '}'
    " Insérer deux nouvelles lignes et remonter avec une tabulation
    return "\<Esc>a\<CR>\<CR>\<Esc>kA\<Tab>"
  else
    " Sinon, insérer simplement un saut de ligne
    return "\<CR>"
  endif
endfunction

" Initialiser vim-plug
call plug#begin('~/.vim/plugged')

" Ajouter des plugins ici"
autocmd VimEnter * NERDTreeToggle
Plug 'preservim/nerdtree'   " Exemple : NERDTree

" Fin de la section des plugins
call plug#end()

" Autres configurations de Vim
syntax on
filetype plugin indent on

" Automatically close Vim if NERDTree is the only window left
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && getbufvar(winbufnr(1), '&filetype') == 'nerdtree' | quit | endif

" Automatically close NERDTree tab if it's the last window open in that tab
autocmd BufEnter * if winnr('$') == 1 && &filetype == 'nerdtree' && getbufvar(winbufnr(1), '&buftype') == '' | quit | endif

