set encoding=utf-8
set guicursor=
call plug#begin()

" Suporte a temas
Plug 'morhetz/gruvbox'

"Plug 'terryma/vim-multiple-cursors'

Plug 'sheerun/vim-polyglot'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"'roxma/nvim-completion-manager' está dando erro
"Plug 'roxma/nvim-completion-manager'

" Autocomplete de tags
Plug 'jiangmiao/auto-pairs'

" ultisnips Está requerendo uma versão do python > 2.7
"Plug 'SirVer/ultisnips'

" Criação de snippets
Plug 'honza/vim-snippets'

" Navegador de diretórios
Plug 'scrooloose/nerdtree'

" Suporte ao composer
Plug 'noahfrederick/vim-composer'

"Erro
"Plug 'phpfolding.vim'

" Suporte ao php
Plug 'phpactor/phpactor'

" Suporte ao javascript
Plug 'pangloss/vim-javascript'

" Suporte ao git
Plug 'tpope/vim-fugitive'

" vdebug tá com dependencia do python
" Plug 'joonty/vdebug'

" Barra de status
Plug 'vim-airline/vim-airline'

" Temas da barra de status
Plug 'vim-airline/vim-airline-themes'

" Labels GIT no navegador de arquivos(Descomentei pq não entendi o que faz realmente)
" Plug 'Xuyuanp/nerdtree-git-plugin'

" Exibir git diffs nos arquivos
Plug 'airblade/vim-gitgutter'

" php-cs-fixer
Plug 'stephpy/vim-php-cs-fixer'

" Plugins sugeridos pelo vim-bootstrap
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

"" HTML Bundle
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'

" javascript
"" Javascript Bundle
Plug 'jelera/vim-javascript-syntax'

" php
"" PHP Bundle
Plug 'arnaud-lb/vim-php-namespace'

"" Include user's extra bundle

if filereadable(expand("~/.config/nvim/local_bundles.vim"))
	source ~/.config/nvim/local_bundles.vim
endif"))"

call plug#end()

colorscheme gruvbox
set background=dark

set hidden
set number
"set relativenumber
"set mouse=a
set inccommand=split

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab

" Sem quebra de linha
set nowrap

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <c-n> :NERDTreeToggle<cr>

let g:UltiSnipsEditSplit = 'vertical'
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
