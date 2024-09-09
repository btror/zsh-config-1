# Personal ZSH Configuration Guide

<details>
  <summary>Windows Pre-Config</summary>
  
  1. install WSL (for running linux distros on windows)
    - `wsl --install`
  2. enable "Windows Subsystem for Linux" in Windows Features
  3. install Ubuntu 24.04 LTS from Microsoft store
  4. open Ubuntu terminal and update packages
      - `sudo apt update && sudo apt upgrade`
  5. install zsh shell
      - `sudo apt-get install zsh`
  6. make zsh default shell
      - `chsh -s /usr/bin/zsh`
</details>

### Z Shell Run Commands Configuration
1. install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
2. install [powerlevel10k](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#installation)
    - go through the configuration wizard (<i>should appear on first run in terminal</i>)
    - note: might have to use a nerd font to prevent UI glitches
3. configure file paths in .zshrc file
    - there is a function, `select_start_path`, that prompts users to choose a start path as a desired WSL profile or Windows user, delete this if not wanted
