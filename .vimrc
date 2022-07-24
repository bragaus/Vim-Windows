call plug#begin()

""""""
Plug 'Yggdroot/indentLine'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
"""""""

" Tema
Plug 'ntk148v/vim-horizon'
Plug 'dracula/vim', {'as':'dracula'}

" AirLines
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" NerdTree
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Icones
Plug 'ryanoasis/vim-devicons'

" Sintaxes
Plug 'sheerun/vim-polyglot'

" Processadores
Plug 'dense-analysis/ale'

" Multiplos cursores
Plug 'terryma/vim-multiple-cursors'

" Relembrar os arquivos abertos quando fechar o vim e abrir novamente
" Plug 'abdalrahman-ali/vim-remembers'

" Git
Plug 'tpope/vim-fugitive'

" MT4 sintaxe
Plug 'pnetherwood/mql4-dev'

" O Plugin mais amorzinho de todos
Plug 'mhinz/vim-startify'

"Plug 'posva/vim-vue'
Plug 'storyn26383/vim-vue'

" Completar codigo
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Comentario automatizado
Plug 'preservim/nerdcommenter'

" Formatador de syntax
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

call plug#end()

""""""""""""
set autoindent
set smartindent

" Iniciar o vim com os traços de indentação na coluna
let g:indentLine_enabled = 1

" Ativar/Desativar traços de indentação na coluna com Ctrl+k+i
map <A-k>i :IndentLinesToggle<cr>

let g:ctrlp_custom_ignore = '\v[\/]\.(swp|zip)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_show_hidden = 1

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
map cc <Plug>NERDCommenterInvert
map cs <Plug>NERDCommenterSexy
""""""""""""""""

" Tema
colorscheme dracula

" Solução para abrir Gvim em modo tela cheia
au GUIEnter * simalt ~x

" Habilitar cores na sintaxe
syntax on

" Habilitar detector de extensão para disponibilizar utilidades especificas
filetype on
filetype plugin on
filetype indent on

" Cor do cursor
hi Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=purple gui=bold

" Cor da linha selecionada
hi Visual  guifg=#000000 guibg=#FFFFFF gui=bold

" Usado para esconder trechos de código de acordo com sua indentação
set foldmethod=indent

" Retirar Menus e Scroll do Gvim
set guioptions-=m
set guioptions-=T
set guioptions=Ace

set guifont=Hack\ NF:h12 " Fonte e tamanho
set nowrap " Não quebrar linhas longas
set so=999 " Centralizar linha
set number relativenumber " Habilitar numeros de linhas
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab " Ajustar largura do tab para 4 espaços
set cursorline " Habilitar cor na linha
set hidden " Habilitar Abas para alternar entre arquivos abertos
set signcolumn=yes " Adiciona uma linha vertical onde vai apontar linhas de codigo com erro
set encoding=utf-8 " Para ativar icones de fonts
set nobackup " No backup files
set nowritebackup " No backup files
set splitright " Abrir novo arquivo na direita
set splitbelow " Abrir novo arquivo embaixo
set mouse=a " Habilitar suporte a mouse
set t_Co=256 " Solução para funcionar tema no Windows Terminal
set lines=999 " Altura da janela sem estar maximizada
set columns=999 " Largura da janela sem estar maximizada

" Git
nmap <A-s> :Git status<CR>
nmap <A-a> :Git add .<CR>
nmap <A-c> :Git commit<CR>
nmap <A-p> :Git push<CR>

" Ir para proxima/anterior janela
nmap <A-Right> :bn<CR>
nmap <A-Left> :bp<CR>
nmap <A-x> :bd!<CR>

nmap <A-k>s :Startify<CR>

" NerdTree
nmap <C-d> :NERDTreeToggle<CR>
nmap <C-r> :NERDTreeRefreshRoot<CR>

" Fechar todas as janelas menos a atual
nmap <C-k> :BufOnly<CR>

" Atalho para abrir o Terminal
map <c-t> :bel term ++rows=12<cr>

" Airline
let g:airline#extensions#tabline#fnamemod = ':t' " Mostrar apenas o nome no titulo do buffer aberto
let g:airline#extensions#tabline#enabled = 1 " Mostrar extensões no titulo do buffer aberto
let g:airline_powerline_fonts = 1
let g:airline_section_y = 1

" Mostrar linha escondida
let NERDTreeShowHidden=1
let g:NERDTreeIgnore = ['.DS_Store', '.cache$', 'node_modules$', '.git$', 'debug$', '\~$']
let g:NERDTreeShowHidden = 1
let g:NERDTreeStatusline = ''

" ALE
let g:ale_sign_error = '❌'
let g:ale_sign_warning ='-'
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_completion_enabled = 0
let g:ale_fixers = {'javascript': ['prettier', 'eslint']}
nmap <F10> :ALEFix<CR>

" Configurações para rodar bem no Windows
source $VIMRUNTIME/mswin.vim
behave mswin
