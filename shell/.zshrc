# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
alias l="eza --icons -l"
alias v="nvim"
alias q="exit"
alias spt="~/spotify_player"
alias cact="conda activate"
alias cdact="conda deactivate"
alias jn="jupyter notebook"
alias gt="cd ~/Desktop/GT"
alias notes="cd ~/Desktop/Salamandra/notes/"
alias server="cd ~/Desktop/Salamandra/salamandra-server/"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.9
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/miniconda3/etc/profile.d/conda.sh


export PATH="$HOME/android-studio/bin:$HOME/.cargo/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
