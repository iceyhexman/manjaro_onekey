sudo pacman-mirrors -GB testing -c China
echo "[archlinuxcn]
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch">>/etc/pacman.conf
sudo pacman -S archlinuxcn-keyring --noconfirm
sudo pacman -Syyu --noconfirm
sudo pacman -S base-devel --noconfirm
sudo pacman -S google-chrome yay sqlmap metasploit nmap fcitx-im fcitx-configtool fcitx-googlepinyin --noconfirm
sudo touch ~/.xprofile
echo "export LC_ALL=zh_CN.UTF-8
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=“@im=fcitx">~/.xprofile
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sudo chsh -s /bin/zsh
yay -S typora --noconfirm
yay -S electronic-wechat ieaseMusic yaourt --confirm
