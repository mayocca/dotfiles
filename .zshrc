HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory


. "$HOME/.cargo/env"
eval "$(mise activate zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh


PATH=~/.console-ninja/.bin:$PATH
