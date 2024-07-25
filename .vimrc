" Activer la numérotation des lignes
set number
set relativenumber

" Configurer les tabulations et les espaces
set tabstop=4
set shiftwidth=4
set expandtab

" Activer la coloration syntaxique
syntax on

" Configurer l'indentation automatique
set autoindent
set smartindent

" Configurer la recherche
set ignorecase
set smartcase

" Afficher les parenthèses correspondantes
set showmatch

" Afficher les espaces et les tabulations
set list
set listchars=tab:>-,trail:·,extends:>,precedes:<

" Répertoire des fichiers de swap
set directory=~/.vim/swap//

" Options de recherche
set incsearch
set hlsearch

" Déplacer une ligne vers le haut
nnoremap <A-Up> :m .-2<CR>==

" Déplacer une ligne vers le bas
nnoremap <A-Down> :m .+1<CR>==

" Déplacer plusieurs lignes en mode visuel
xnoremap <A-Up> :m '<-2<CR>gv=gv
xnoremap <A-Down> :m '>+1<CR>gv=gv

