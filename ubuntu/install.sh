#!/bin/bash
set -x
# rm -rf ~/.oh-my-zsh
wget -O ohmyzsh.sh  https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sudo apt install zsh -y
RUNZSH="no" | sh ohmyzsh.sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

cp -f .zshrc ~/.zshrc
cp -f .p10k.zsh ~/.p10k.zsh
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
brew install -q kubectx
sudo aws/install

