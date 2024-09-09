# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# FZF configuration.
export FZF_BASE="$HOME/.fzf"
export DISABLE_FZF_AUTO_COMPLETION="false"
export DISABLE_FZF_KEY_BINDINGS="true"
export FZF_DEFAULT_OPTS="
  --height ~75% --info inline-right:'results: ' --border bold \
  --border-label='Change Directory' --prompt 'filter: ' \
  --preview 'file {}' --preview-window up,1,border-horizontal \
  --color 'fg:#bbccdd,fg+:#ddeeff,label:italic:#778899,border:#8a8550,preview-fg:#33d128,preview-border:#bd4db5,pointer:#33d128,separator:#bd4db5'
"

# Load theme.
# source ~/powerlevel10k/powerlevel10k.zsh-theme
ZSH_THEME="jonathan-with-emojis" # NOTE: comment this line out if you source the powerlevel10k theme

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Plugins setup.
plugins=(
  git
  emoji
  timer
  vscode
  web-search
  zsh-interactive-cd
)
source $ZSH/oh-my-zsh.sh

# Powerlevel10k configuration.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# fzf configuration.
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ----------------START CUSTOM COMMANDS---------------

wsl_profile_name="<ENTER UBUNTU WSL PROFILE NAME>"
win_user_name="<ENTER WINDOWS USER NAME>"

wsl_path="/home/$wsl_profile_name"
win_path="/mnt/c/users/$win_user_name"

current_path=$(pwd)

# Function to prompt for start path selection.
select_start_path() {
  vared -cp "Enter (1) current path ($current_path), (2) WSL Ubuntu profile (/home/$wsl_profile_name), (3) Windows user (Users/$win_user_name): " dir_choice
  if [[ "$dir_choice" == "1" ]]; then
      pwd
  elif [[ "$dir_choice" == "2" ]]; then
      cd $wsl_path
      pwd
  elif [[ "$dir_choice" == "3" ]]; then
      cd $win_path
      pwd
  else
      echo "Invalid choice. Defaulting to $current_path."
  fi
}

# comment out if not using Windows
select_start_path
