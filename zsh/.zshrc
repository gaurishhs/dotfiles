# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

fpath=(
  ~/.local/share/zsh/completions 
  $(brew --prefix)/share/zsh-completions
  $fpath
)

# Load and initialize compinit
autoload -Uz compinit 
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;

export GPG_TTY=$(tty)
export EDITOR="nvim"
export PATH=$PATH:/Users/gaurish/.spicetify
export PATH=$PATH:/Users/gaurish/.cargo/bin
export PATH="/usr/local/opt/postgresql@15/bin:$PATH"
export PATH="$PATH:$(brew --prefix llvm@16)/bin"
export PNPM_HOME="/Users/gauris/Library/pnpm"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/usr/local/opt/node@18/bin:$PATH"
export LDFLAGS="$LDFLAGS -L$(brew --prefix llvm@16)/lib"
export CPPFLAGS="$CPPFLAGS -I$(brew --prefix llvm@16)/include"

# pnpm
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f .zsh_aliases ] && source .zsh_aliases
[ -f .zsh_functions ] && source .zsh_functions

