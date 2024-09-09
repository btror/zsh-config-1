# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Load Powerlevel10k theme.
source ~/powerlevel10k/powerlevel10k.zsh-theme
# ZSH_THEME="robbyrussell" # NOTE: sourcing powerlevel10k sets the theme I think...

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Plugins setup.
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh

# Powerlevel10k configuration.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# ----------------START CUSTOM COMMANDS---------------

wsl_profile_name="<ENTER WSL UBUNTU PROFILE NAME>"
win_user_name="<ENTER WINDOWS USER NAME>"

wsl_path="/home/$wsl_profile_name"
win_path="/mnt/c/users/$win_user_name"

# Function to prompt for start path selection.
select_start_path() {
  vared -cp "Enter (1) WSL Ubuntu profile (/home/$wsl_profile_name) or (2) Windows user (Users/$win_user_name): " dir_choice

  if [[ "$dir_choice" == "1" ]]; then
      cd $wsl_path
      pwd
  elif [[ "$dir_choice" == "2" ]]; then
      cd $win_path
      pwd
  else
      echo "Invalid choice. Staying in /home/$wsl_profile_name by default."
  fi
}

select_start_path
