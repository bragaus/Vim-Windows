set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab " largura do Tab ajustada para 4
set number relativenumber " numeração
set cursorline " acender linha
set t_Co=256 " Solução para mostrar cores no vim rodando TMUX
set so=999 " centralizar a linha no meio

let g:airline_powerline_fonts = 1 " exibir arrows no air-line do vim
let g:airline#extensions#tabline#enabled = 1 " exibe tab com um unico arquivo aberto

" status de modificação do arquivo no explorador de arquivos
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

syntax on " habilita o highlight de sintaxe

"Exibir Explorador de arquivo com Ctrl + o
map <C-o> :NERDTreeToggle<CR> 

" Solução para completar automaticamente o diretorio com ctrl + x e ctrl + f 
autocmd BufEnter * silent! lcd %:p:h


call plug#begin('~/.vim/plugged')

" Não preciso nem falar nada
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Explorador de arquivos + icones
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

" Sintexe React
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mxw/vim-jsx'

" Tema
Plug 'ntk148v/vim-horizon'

Plug 'dracula/vim',{'as':'dracula'}

" Multiplos cursores
Plug 'terryma/vim-multiple-cursors'

Plug 'motemen/git-vim'
call plug#end()

" Tema
colorscheme horizon 
