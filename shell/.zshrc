# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# Essentials
alias l="eza --icons -l"
alias v="nvim"
alias q="exit"
alias e="xplr"

# Applications
alias cact="conda activate"
alias cdact="conda deactivate"

# Git
alias ga="git add"
alias gr="git reset" 
alias gs="git status"

# Directory shortcuts
alias gt="cd ~/Desktop/GT"
alias notes="cd ~/Desktop/Salamandra/notes/"
alias server="cd ~/Desktop/Salamandra/salamandra-server/"
alias web="cd ~/Desktop/Salamandra/salamandra-website/"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/miniconda3/etc/profile.d/conda.sh

export PATH="$HOME/android-studio/bin:$HOME/.cargo/bin:$PATH"
export PATH="$PATH:/opt/nvim/" 
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
