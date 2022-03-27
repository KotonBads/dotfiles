# Zinit
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"

# Histfile
HISTFILE=$HOME/.zsh_history
HISTSIZE=2000
SAVEHIST=1000
setopt appendhistory
setopt SHARE_HISTORY

# Plugins
zinit light zdharma-continuum/history-search-multi-word
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-history-substring-search
zinit load zsh-users/zsh-autosuggestions

# Substr search highlighting
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND=none
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND=none

# Autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)

# Autocorrect
setopt correct

# Completion
setopt auto_menu
setopt completealiases
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

# Starship (https://starship.rs)
eval "$(starship init zsh)"

# Aliases
source $HOME/.zsh_aliases

# Binds
bindkey '^[OA' history-substring-search-up
bindkey '^[OB' history-substring-search-down
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^H' backward-kill-word

# Python Prompt
export PYTHONSTARTUP=$HOME/.pyrc

# Autoload
autoload zmv

# GPG
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent
### End of Zinit's installer chunk
