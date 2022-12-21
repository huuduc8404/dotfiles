#!/bin/bash
set -x
# rm -rf ~/.oh-my-zsh
sudo apt install python3-pip
pip3 install apt-select
~/.local/bin/apt-select -C VN
sudo mv sources.list /etc/apt/
wget -O ohmyzsh.sh  https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sudo apt install zsh -y
chsh -s $(which zsh)
RUNZSH="no" | sh ohmyzsh.sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

cp -f .zshrc ~/.zshrc
cp -f .p10k.zsh ~/.p10k.zsh


sudo apt install unzip -y
set -x
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install


