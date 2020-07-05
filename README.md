# manjaro安装后配置

安装时候的问题：https://www.jianshu.com/p/c07daada0b52

配置archlinuxcn和blackarch源: `sudo gedit /etc/pacman.conf`   or `sudo nano /etc/pacman.conf`
```
[archlinuxcn]
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch
Server = http://mirrors.163.com/archlinux-cn/$arch
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch
Server = https://mirrors.cloud.tencent.com/archlinuxcn/$arch
[blackarch]
SigLevel = Optional TrustAll
Server = https://mirrors.cloud.tencent.com/blackarch/$repo/os/$arch
Server = https://mirrors.ustc.edu.cn/blackarch/$repo/os/$arch
Server = https://mirrors.tuna.tsinghua.edu.cn/blackarch/$repo/os/$arch
Server = http://mirrors.nju.edu.cn/blackarch/$repo/os/$arch
```

安装后配置：

```bash
sudo pacman-mirrors -GB testing -c China
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
yay -S electronic-wechat ieaseMusic yaourt --confirm #微信+网易云
yay -S lsd --confirm # 美化版ls
yay -S cnpm --confirm #taobao npm
yay -S archlinuxcn/qq-linux --confirm # linuxqq
```

配置`~/.zshrc`


```bash
alias openproxy="export ALL_PROXY=socks5://127.0.0.1:1080; echo 'proxy turn on'" #终端走代理
alias closeproxy="unset ALL_PROXY; echo 'proxy closed'" #关闭终端代理
alias vi="vim"
alias ls='lsd'
alias mip='curl cip.cc'
alias npm='cnpm'
alias vmwarenet='systemctl start vmware-networks.service' #解决vmware无法nat
```

安装electron-ssr `yay -s electron-ssr`
