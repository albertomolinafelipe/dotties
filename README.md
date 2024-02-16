# Set up for Debian Machine
![](screenshot.png)

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
 - Install more dependencies abd fonts
```bash
sudo apt install feh curl
curl -OJL https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Gohu.zip
curl -OJL https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Hack.zip
mkdir hack && unzip Hack.zip && mv *.ttf hack
mkdir gohu && unzip Gohu.zip && mv *.ttf gohu
sudo mv hack /usr/local/share/fonts/
sudo mv gohu /usr/local/share/fonts/
rm Gohu.zip Hack.zip
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
cd ~/dotties/suckless/dwm && sudo make clean install
cd ~/dotties/suckless/st && sudo make clean install
cd ~/dotties/suckless/slstatus && sudo make clean install
```

## Editor
 - Download `nvim`
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mkdir -p /opt/nvim
sudo mv nvim.appimage /opt/nvim/nvim
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
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop
```
 - Keepass
```bash
sudo apt install keepassxc
```

 - Other programs
```bash
sudo apt update && sudo apt install texlive-full neofetch htop picom xclip 
```

---
I try to emulate [kanagawa nvim](https://github.com/rebelot/kanagawa.nvim) from rebelt
