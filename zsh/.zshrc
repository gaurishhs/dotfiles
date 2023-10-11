# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Setup custom completions dir
fpath=($HOME/.local/share/zsh/completions $fpath)

# Load and initialize compinit
autoload compinit
compinit -i

export GPG_TTY=$(tty)
export EDITOR="nvim"

# pnpm
export PNPM_HOME="/Users/gaurish/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH="/usr/local/opt/node@18/bin:$PATH"
# bun completions
[ -s "/Users/gaurish/.bun/_bun" ] && source "/Users/gaurish/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH=$PATH:/Users/gaurish/.spicetify

[ -f .zsh_aliases ] && source .zsh_aliases
[ -f .zsh_functions ] && source .zsh_functions
