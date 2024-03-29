#! /bin/bash
# By lei

#颜色
red(){
    echo -e "\033[31m\033[01m$1\033[0m"
}
green(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
yellow(){
    echo -e "\033[33m\033[01m$1\033[0m"
}
blue(){
    echo -e "\033[34m\033[01m$1\033[0m"
}

#服务器检查项目
#Lemonbench 综合测试
function Lemonbench(){
curl -fsL https://ilemonra.in/LemonBenchIntl | bash -s fast
}

#三网Speedtest测速
function 3speed(){
bash <(curl -fSsLo- https://git.io/superspeed.sh)
}

#Memorytest 内存压力测试
function memorytest(){
yum install wget -y
yum groupinstall "Development Tools" -y
wget https://raw.githubusercontent.com/FunctionClub/Memtester/master/memtester.cpp
blue "下载完成"
gcc -l stdc++ memtester.cpp
./a.out
}

#Route-trace 回城路由追踪
function rtsh(){
bash -c "$(curl http://nexttrace-io-leomoe-api-a0.shop/nt_install_v1.sh)"
}

#Speedtest for Linux·下载
function speedtest-linux(){
wget -O "/root/speedtest" "https://raw.githubusercontent.com/Netflixxp/jcnf-box/master/sh/speedtest" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/speedtest"
chmod 777 "/root/speedtest"
yellow "下载完成,之后可执行 bash /root/speedtest 再次运行"
./speedtest
}

#获取本机IP
function getip(){
echo  
curl ip.p3terx.com
echo
}

#nf.sh 流媒体解锁测试
function nf(){
bash <(curl -L -s https://raw.githubusercontent.com/lmc999/RegionRestrictionCheck/main/check.sh)
#检测/诊断Youtube地域
function tubecheck(){
wget -O "/root/tubecheck" "https://cdn.jsdelivr.net/gh/sjlleo/TubeCheck/CDN/tubecheck_1.0beta_linux_amd64" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/tubecheck"
chmod 777 "/root/tubecheck"
yellow "下载完成,之后可执行 ./tubecheck 再次运行"
./tubecheck
}

#服务器功能调试
#ChangeSource Linux换源脚本·下载
function cssh(){
wget -O "/root/changesource.sh" "https://raw.githubusercontent.com/Netflixxp/jcnf-box/master/sh/changesource.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/changesource.sh"
chmod 777 "/root/changesource.sh"
yellow "下载完成"
echo
green "请自行输入下面命令切换对应源"
green " =================================================="
echo
green " bash changesource.sh 切换推荐源 "
green " bash changesource.sh cn  切换中科大源 "
green " bash changesource.sh aliyun 切换阿里源 "
green " bash changesource.sh 163 切换网易源 "
green " bash changesource.sh aws 切换AWS亚马逊云源 "
green " bash changesource.sh restore 还原默认源 "
}

#IPV.SH ipv4/6优先级调整
function ipvsh(){
wget -O "/root/ipv4.sh" "https://raw.githubusercontent.com/Netflixxp/jcnf-box/master/sh/ipv4.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/ipv4.sh"
chmod 777 "/root/ipv4.sh"
yellow "下载完成,之后可执行 bash /root/ipv4.sh 再次运行"
bash "/root/ipv4.sh"
}

#SWAP一键安装/卸载脚本
function swapsh(){
wget -O "/root/swap.sh" "https://raw.githubusercontent.com/Netflixxp/jcnf-box/master/sh/swap.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/swap.sh"
chmod 777 "/root/swap.sh"
yellow "下载完成,你也可以输入 bash /root/swap.sh 来手动运行"
bash "/root/swap.sh"
}

#安装BBR
function bbr(){
wget -O "/root/tcp.sh" "https://github.000060000.xyz/tcp.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/tcp.sh"
chmod 777 "/root/tcp.sh"
yellow "下载完成,你也可以输入 bash /root/tcp.sh 来手动运行"
bash "/root/tcp.sh"
}

#宝塔面板 官方版·一键安装
function btnew(){
wget -O "/root/install.sh" "http://download.bt.cn/install/install_6.0.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/install.sh"
chmod 777 "/root/install.sh"
blue "下载完成"
bash "/root/install.sh"
}

#宝塔面板英文官方版·一键安装
function aaPanel(){
wget -O "/root/aaPanel.sh" "http://www.aapanel.com/script/install_6.0_en.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/aaPanel.sh"
chmod 777 "/root/aaPanel.sh"
blue "下载完成"
bash "/root/aaPanel.sh"
}

#宝塔面板7.7·一键安装
function btpj(){
wget -O "/root/btpj.sh" "https://raw.githubusercontent.com/zhucaidan/btpanel-v7.7.0/main/install/install_panel.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/btpj.sh"
chmod 777 "/root/btpj.sh"
blue "下载完成"
bash "/root/btpj.sh"
}

#科学上网工具
#iptables.sh iptable中转
function iptsh(){
wget -O "/root/iptables.sh" "https://raw.githubusercontent.com/Netflixxp/jcnf-box/main/sh/iptables.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/iptables.sh"
chmod 777 "/root/iptables.sh"
yellow "下载完成，你也可以输入 bash /root/iptables.sh 来手动运行"
bash "/root/iptables.sh"
}

#gost.sh gost一键中转
function gost(){
wget -O "/root/gost.sh" "https://raw.githubusercontent.com/KANIKIG/Multi-EasyGost/master/gost.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/gost.sh"
chmod 777 "/root/gost.sh"
yellow "下载完成，你也可以输入 bash /root/gost.sh 来手动运行"
bash "/root/gost.sh"
}

#MTP&TLS 一键脚本
function mtp(){
wget -O "/root/mtp.sh" "https://raw.githubusercontent.com/sunpma/mtp/master/mtproxy.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/mtp.sh"
chmod 777 "/root/mtp.sh"
yellow "下载完成，你也可以输入 bash /root/mtp.sh 来手动运行"
bash "/root/mtp.sh"
}

#xray.sh xray一键安装8合一
function xray(){
wget -O "/root/xray.sh" "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/xray.sh"
chmod 777 "/root/xray.sh"
yellow "下载完成，你也可以输入 bash /root/xray.sh 来手动运行"
bash "/root/xray.sh"
}

#wulabing.sh wulabingxray安装脚本
function wulabing(){
wget -O "/root/wulabing.sh" "https://raw.githubusercontent.com/wulabing/Xray_onekey/main/install.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/wulabing.sh"
chmod 777 "/root/wulabing.sh"
yellow "下载完成，你也可以输入 bash /root/wulabing.sh 来手动运行"
bash "/root/wulabing.sh"
}

#v2-ui.sh 一键安装
function v2-ui(){
bash <(curl -Ls https://blog.sprov.xyz/v2-ui.sh)
}

# Cloudflare WARP 一键配置脚本
function WARP(){
bash <(curl -fsSL git.io/warp.sh) menu
}

# Ehcoo隧道中转
function ehco(){
bash <(curl -fsSL https://leo.moe/ehco.sh)
}

#主菜单
function start_menu(){
    clear
    red " jcnf 常用脚本包" 
    green " https://github.com/Netflixxp/jcnf-box "
    green " 博客 https://ybfl.xyz "
	green " TG频道 https://t.me/mffjc "
	
	yellow " =======服务器检查============================== "
    green " 1. Lemonbench 综合测试 "
    green " 2. 三网Speedtest测速"
    green " 3. 内存压力测试"
    green " 4. 回程路由追踪" 
    green " 5. Speedtest测速"
    green " 6. 获取本机IP"
    green " 7. 流媒体解锁测试"
	
    yellow " =======服务器功能============================== "
    green " 11. Linux换源脚本"
    green " 12. ipv4/6优先级调整 " 
    green " 13. 虚拟内存SWAP一键安装 "
    green " 14. 一键安装BBR "
    green " 16. 宝塔中文官方一键安装 "
    green " 17. 宝塔英文官方一键安装（无需验证） "
    green " 18. 宝塔面板免验证版 "
    green " 19. Cloudflare WARP 一键配置脚本 "

    yellow " =======科学上网工具============================ "
    green " 21. iptables一键中转 "
    green " 22. gost一键中转 "
    green " 23. MTP&TLS 一键脚本 "
    green " 24. xray一键安装8合一脚本 "
    green " 25. v2-ui一键安装 "
  	green " 26. wulabing一键xray脚本 "
  	green " 27. Ehcoo隧道中转 "
	
    yellow " =============================================== "
    green " 0. 退出脚本"
    echo
    read -p "请输入数字:" menuNumberInput
    case "$menuNumberInput" in
        1 )
           Lemonbench
	;;
        2 )
           3speed
	;;
        3 )
           memorytest
	;;
        4 )
           rtsh
	;;
        5 )
           speedtest-linux
	;;
	    6 )
           getip
	;;
	    7 )
           nf
	;;
            11 )
           cssh
	;;
		12 )
           ipvsh
	;;
		13 )
           swapsh
	;;
		14 )
           bbr
	;;
		15 )
           system-best
	;;
		16 )
           btnew
	;;
		17 )
           aaPanel
	;;
		18 )
           btpj
	;;
		19 )
           WARP
	;;
		21 )
           iptsh
	;;
		22 )
           gost
	;;
		23 )
           mtp
	;;
		24 )
           xray
	;;
		25 )
           v2-ui
	;;
		26 )
           wulabing
	;;
		27 )
           ehco
	;;
        0 )
            exit 1
        ;;
        * )
            clear
            red "请输入正确数字 !"
            start_menu
        ;;
    esac
}


start_menu "first"
