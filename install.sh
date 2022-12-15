#!/bin/bash
rm -rf /home/gitpod/.oh-my-zsh
cd /home/gitpod/.dotfiles
RUNZSH="no" | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

cp -f .zshrc ~/.zshrc
cp -f .p10k.zsh /tmp/gitpod-gitpod-code-zsh/.p10k.zsh
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
sudo aws/install

