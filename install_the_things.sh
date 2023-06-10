## Install neovim
echo "Installing Neovim"
sudo apt install -y ninja-build gettext cmake unzip curl git
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make -j8 CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

## Some terminal stuff
echo "Installing Zsh"
sudo apt install -y allacritty zsh tmux
sudo chsh -s /usr/bin/zsh

eval "$(starship init bash)"

## Install some rust stuff
sudo apt install cargo
cargo install bat
cargo install ripgrep
cargo install fd-find
