#!/bin/bash
set -x
rm -rf /home/gitpod/.oh-my-zsh
cd /home/gitpod/.dotfiles
# cd /workspace/dotfiles
RUNZSH="no" | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# cp -f .zshrc ~/.zshrc
# mkdir -p /tmp/gitpod-gitpod-code-zsh/
# cp -f .p10k.zsh /tmp/gitpod-gitpod-code-zsh/.p10k.zsh
