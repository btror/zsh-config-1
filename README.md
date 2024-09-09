# Personal ZSH Configuration Guide

<details>
  <summary>Windows Pre-Config</summary>

  <br>
  
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

![windows_terminal](https://github.com/user-attachments/assets/8c5aa12f-d38d-4940-ad40-035afc9bb5d0)


### Z Shell Run Commands Configuration
1. install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
2. copy & paste `jonathan-with-emojis.zsh-theme` file in `.oh-my-zsh/themes` folder
3. open `.oh-my-zsh/plugins/emoji/emoji-char-definitions.zsh` file and create 2 new emoji groups called "favorites" and "favorites2"
```
emoji_groups[favorites]="
  thinking
  smiling_face_with_sunglasses
  nerd_face
  scream
  rage
  smiling_imp
  skull
  alien
"

emoji_groups[favorites2]="
  pray
  thumbsup
  call_me_hand
  metal
  love_you_gesture
  crossed_fingers
  ok_hand
"
```
4. install [powerlevel10k](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#installation)
    - go through the configuration wizard (<i>should appear on first run in terminal</i>)
        - I only use the instant prompt, personally, but powerlevel10k offers many other features (<i>if you want to</i>)
        - note: if you source a powerlevel10k theme in `.zshrc` you might need to use a nerd font to prevent UI glitches (<i>might not have to honestly</i>)
5. copy `.zshrc` file content into existing `.zshrc` file
6. configure file paths in .zshrc file
    - there is a function, `select_start_path`, that prompts users to choose a start path as a desired WSL profile or Windows user, delete this if you don't want to use it
7. (optional) if using powerlevel10k theme do not set `ZSH_THEME`, just `source ~/powerlevel10k/powerlevel10k.zsh-theme`
8. (optional) set vscode integrated terminal to Ubuntu 24.04 LTS or whatever shell you're using
<details>
  <summary>VSCode Example</summary>
  
  <br>
  
  ![vscode_integrated_terminal](https://github.com/user-attachments/assets/cb34d58f-6a3a-4b81-9527-da382f89c443)
</details>
