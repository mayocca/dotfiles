ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME=""

# Plugins
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Starship
eval "$(starship init zsh)"

# Herd injected PHP binary.
export PATH="/Users/Matias/Library/Application Support/Herd/bin":$PATH

# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/Matias/Library/Application Support/Herd/config/php/82/"

# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/Matias/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP binary.
export PATH="/Users/Matias/Library/Application Support/Herd/bin/":$PATH
eval "$(/opt/homebrew/bin/rtx activate zsh)"
