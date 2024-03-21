#!/bin/bash
# set -x
rm -rf /home/gitpod/.oh-my-zsh
cd /home/gitpod/.dotfiles
# cd /workspace/dotfiles
RUNZSH="no" | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


# sed 's|^ZSH_THEME.*|ZSH_THEME="powerlevel10k/powerlevel10k"|g' .zshrc -i
# sed 's|^plugins=.*|plugins=(git kubectl helm docker zsh-autosuggestions)|g' .zshrc -i

cp -f .zshrc ~/.zshrc
cp -f .p10k.zsh ~/.p10k.zsh
