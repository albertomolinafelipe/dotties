# Installs for Debian machine

## APT Packages

```bash
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt install git keepassxc dunst neofetch zsh curl feh neovim firefox-esr g++ scrot xclip
chsh -s $(which zsh)
```

## Other installs
### Signal
```bash
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\ sudo tee /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop
```

### Miniconda
```bash
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh
```

### Rust
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install eza
```

### Calibre
```bash
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
```

### KindleComicCoverter
```bash
curl -o KindleComicCoverter https://github.com/ciromattia/kcc/releases/download/v5.6.4/kindleComicConverter-latest-x86_64.AppImage
chmod +x kindleComicCoverter
cp kindleComicCoverter /usr/local/bin
```

### Kindlegen
```bash
curl -o kindlegen_linux_2.6_i386_v2_9.tar.gz https://archive.org/download/kindlegen_linux_2_6_i386_v2_9/kindlegen_linux_2.6_i386_v2_9.tar.gz
tar -xzvf kindlegen_linux_2_6_i386_v2_9.tar.gz
cp kindlegen /usr/local/bin
```

## Cloning repos
### Nvim Packer
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### Powerlevel10k and Autosuggestions
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions"
```

## Coping from repo
## DWM
```bash
sudo apt install xorg suckless-tools build-essential libx11-dev libxinerama-dev libxft-dev libwebkit2gtk-4.0-dev 
cp -r suckless ~/.config/
cd ~/.config/suckless/dwm && sudo make clean install
cd ~/.config/suckless/st && sudo make clean install
cd ~/.config/suckless/slstatus && sudo make clean install
```
## Nvim
```bash
sudo cp -r nvim ~/.config/
# Go into packer.lua, do `:so` and `:PackerSync`
```

## Xorg
```bash
cp .xinitrc ~
cp .Xresources ~
cp .zprofile ~
```

## Zsh
```bash
cp .zshrc ~
cp .p10k.zsh ~
```
