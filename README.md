# manjaro安装后配置

安装时候的问题：https://www.jianshu.com/p/c07daada0b52

安装后配置脚本：

```bash
sudo pacman-mirrors -GB testing -c China
echo "[archlinuxcn]
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch">>/etc/pacman.conf
sudo pacman -Syu --noconfirm
sudo pacman -S archlinuxcn-keyring antergos-keyring --noconfirm
sudo pacman -S base-devel --noconfirm
sudo pacman -S google-chrome yay sqlmap metasploit nmap fcitx-im fcitx-configtool fcitx-googlepinyin -noconfirm
sudo touch ~/.xprofile
echo "export LC_ALL=zh_CN.UTF-8
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=“@im=fcitx">~/.xprofile
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sudo chsh -s /bin/zsh
yay -S typora --noconfirm
yay -S electronic-wechat ieaseMusic yaourt --confirm
```

