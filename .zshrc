zmodload zsh/zprof
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# -- Cargo -- #
export PATH="$HOME/.cargo/bin:$PATH"

# -- Aliases -- #
alias q='exit'
alias reload='source ~/.zshrc'
alias poff='sudo systemctl poweroff' 
alias wise='fortune | cowsay -f stegosaurus | lolcat' 
alias stegsay='cowsay -f stegosaurus' 
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias q='exit'
alias ff='fastfetch'                                        1   alias desktop='sudo systemctl isolate graphical.target' 

# -- History -- #  
HISTFILE=~/.zsh_history  
HISTSIZE=50000
SAVEHIST=50000 
setopt SHARE_HISTORY HIST_IGNORE_DUPS HIST_IGNORE_SPACE 

#  -- Completions -- # 
# Only check for new completions once a day
autoload -Uz compinit
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
    compinit
else
    compinit -C
fi

# -- Plugins -- # 
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#6c7086' 
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
bindkey '^I' autosuggest-accept

#  -- Zoxide -- # 
eval "$(zoxide init zsh --cmd cd)"  

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
