#!/bin/bash
set -x
rm -rf /home/gitpod/.oh-my-zsh
cd /home/gitpod/.dotfiles
# cd /workspace/dotfiles
RUNZSH="no" | ./ohmyzsh.sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

cp -f .zshrc ~/.zshrc
mkdir -p /tmp/gitpod-gitpod-code-zsh/
cp -f .p10k.zsh /tmp/gitpod-gitpod-code-zsh/.p10k.zsh
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
brew install -q kubectx
sudo aws/install

