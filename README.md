# Set up for Debian Machine

## Terminal
 - Change to `zsh`
```bash
sudo apt install zsh
chsh -s $(which zsh)
```
 - Clone zsh plugins
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
cp ~/dotties/shell/.p10k.zsh ~
```
 - Move `.zshrc` and the rest of necesary files
```bash
cp ~/dotties/shell/.xinitrc ~
cp ~/dotties/shell/.Xresources ~
cp ~/dotties/shell/.zprofile ~
cp ~/dotties/shell/.zshrc ~
```

## Window Manager
 - Install dependecies
```bash
sudo apt install xorg suckless-tools build-essential libx11-dev libxinerama-dev libxft-dev libwebkit2gtk-4.0-dev 
```
 - Compile
```bash
cd ~/dotties/suckeless/dwm && sudo make clean install
cd ~/dotties/suckeless/st && sudo make clean install
cd ~/dotties/suckeless/slstatus && sudo make clean install
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

## Other programs
 - Signal
```bash
TODO
```
 - Keepass
```bash
sudo apt install keepassxc
```
