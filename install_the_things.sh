#!/usr/bin/bash

## Install neovim
echo "Installing Neovim"
sudo apt install -y ninja-build gettext cmake unzip curl git
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make -j8 CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

cd - 
cp -r nvim ~/.config/nvim

nvim --headless -c "PackerSync"


## Some terminal stuff
echo "Installing Zsh"
sudo apt install -y alacritty zsh tmux
sudo chsh -s /usr/bin/zsh $USER

## Install some rust stuff
sudo apt install -y cargo
cargo install bat
cargo install ripgrep
cargo install fd-find



