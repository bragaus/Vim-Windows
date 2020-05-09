# corrigir erro com o TMUX
export TERM='xterm-256color'

# esse caralho de comando faz a linhazinha bonitinha aparecer no seu shell 
export ZSH="/home/bragaus/.oh-my-zsh"

# Tema mais foda que eu achei ate o momento
ZSH_THEME="powerlevel9k/powerlevel9k"

# Bandeira JS
POWERLEVEL9K_CUSTOM_JAVASCRIPT="echo -n '\ue781' JavaScript"
POWERLEVEL9K_CUSTOM_JAVASCRIPT_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_JAVASCRIPT_BACKGROUND="yellow"

# Customizando o lado esquerdo da linha
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
	dir	
	custom_javascript 
	vcs
	newline
	status
)

# Customizando o lado direito da linha
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
	#public_ip
)

# Adicionar nova linha
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# Font
POWERLEVEL9K_MODE='nerdfont-complete'

# gerar a porra toda
plugins=(git)
source $ZSH/oh-my-zsh.sh
