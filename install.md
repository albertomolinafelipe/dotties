# Set up for Debian Machine

## Terminal
 - Change to `zsh`
```bash
sudo apt install zsh
chsh -s $(which zsh)
```
 - Clone zsh plugins and move custom theme
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
cp ~/dotties/shell/.p10k.zsh ~
```
 - Move `.zshrc` and the rest of necesary files
```bash
cp 
cp ~/dotties/shell/.p10k.zsh ~
```

## Editor
 - Download `nvim`
```bash
# TODO
```
 - Clone packer
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
 - Move to `.config`
```bash
sudo cp -r nvim ~/.config/
```
 - In `nvim/lua/alberto/packer.lua` do `:so` and `:PackerSync`

## Tools
 - Rust and rust terminal tools
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install eza xplr
```
 - Miniconda
```
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh
```