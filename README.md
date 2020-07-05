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
sudo pacman -S google-chrome yay sqlmap metasploit nmap fcitx-im fcitx-configtool fcitx-rime -noconfirm   #rime输入法
sudo touch ~/.xprofile
echo "export LC_ALL=zh_CN.UTF-8
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=“@im=fcitx">~/.xprofile
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
#sudo chsh -s /bin/zsh   
yay -S typora --noconfirm
yay -S electronic-wechat ieaseMusic yaourt --confirm #微信+网易云
yay -S lsd --confirm # 美化版ls
yay -S cnpm --confirm #taobao npm
yay -S archlinuxcn/qq-linux --confirm # linuxqq
```

[rime候选词配置](https://github.com/rime/home/wiki/CustomizationGuide#%E4%B8%80%E4%BE%8B%E5%AE%9A%E8%A3%BD%E6%AF%8F%E9%A0%81%E5%80%99%E9%81%B8%E6%95%B8)rime
rime中文简体长期
`build`目录创建`luna_pinyin.custom.yaml`
```
patch:
  switches:                   # 注意縮進
    - name: ascii_mode
      reset: 0                # reset 0 的作用是當從其他輸入方案切換到本方案時，
      states: [ 中文, 西文 ]  # 重設爲指定的狀態，而不保留在前一個方案中設定的狀態。
    - name: full_shape        # 選擇輸入方案後通常需要立即輸入中文，故重設 ascii_mode = 0；
      states: [ 半角, 全角 ]  # 而全／半角則可沿用之前方案中的用法。
    - name: simplification
      reset: 1                # 增加這一行：默認啓用「繁→簡」轉換。
      states: [ 漢字, 汉字 ]
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
