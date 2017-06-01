# zshrc by rolevax

# History
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# Vi Mode
bindkey -v

# Completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# Prompt
autoload -Uz vcs_info
#zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats " %b"
precmd() {
	vcs_info
}
setopt prompt_subst
PROMPT=[\ %U%~%u\ ]'${vcs_info_msg_0_}'$'\n'%n@%m%(?..-[%?])%#\ 
RPROMPT=%F{green}%*%f

# Alias
alias ls='ls --color=auto -CF'
alias l='ls'
alias la='ls -aCF'
alias ll='ls -alhF'
alias rlsqlplus='rlwrap sqlplus /nolog'  # enable arrowing cmd history
alias octave='octave --no-gui' # GUI your sister
alias exc='expressvpn connect'
alias exd='expressvpn disconnect'
alias exs='expressvpn status'
alias swigo='swig -go -cgo -c++ -intgosize 64'

alias vi='vim'

# Path for Ruby
export PATH=$PATH:$HOME/.gem/ruby/2.2.0/bin

# Path for Go
export GOPATH=$HOME/test/go
export PATH=$PATH:$GOPATH/bin

# The Fuck
eval $(thefuck --alias)

