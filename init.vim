call plug#begin('~/AppData/Local/nvim/plugged')
"Themes
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'	
  Plug 'vim-airline/vim-airline-themes'	
"IDE
  Plug 'easymotion/vim-easymotion'
  Plug 'preservim/nerdtree'
  Plug 'christoomey/vim-tmux-navigator'
"Autocompletado
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'jiangmiao/auto-pairs'
call plug#end()

"CONFIGURACIONES BASICAS ISMA ARCE DEV

set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode

"Temas
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"

let mapleader=" "

"Si pulsas Espacio + s puedes saltar a una posicion
nmap <Leader>s <Plug>(easymotion-s2)
"Si pulsas CTRL + n abre un arbol de archivos
map <C-n> :NERDTreeToggle<CR>

"Si es un archivo de tipo js o py entonces no me muestra sugerencias de kite
if &filetype == "javascript" || &filetype == "python"
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif


"Kite
let g:kite_supported_languages= ['javascript', 'python']


"coc configuracion
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@



"Ir a la definicion
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
