#!/bin/bash
#simple script menu
function arm {
clear
echo "安装中....."
echo "下载arm....."
wget -P /www/ https://2264002746.github.io/gm/arm/arm.7z.001
wget -P /www/ https://2264002746.github.io/gm/arm/arm.7z.002
wget -P /www/ https://2264002746.github.io/gm/arm/arm.7z.003
wget -P /www/ https://2264002746.github.io/gm/arm/arm.7z.004
echo "下载basic....."
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.001
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.002
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.003
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.004
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.005
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.006
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.007
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.008
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.009
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.010
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.011
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.012
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.013
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.014
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.015
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.016
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.017
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.018
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.019
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.020
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.021
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.022
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.023
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.024
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.025
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.026
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.027
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.028
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.029
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.030
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.031
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.032
wget -P /www/ https://2264002746.github.io/gm/basic/basic.7z.033
echo "安装7Z解压....."
yum install p7zip -y
7za x /www/arm.7z.* -r -o /www/arm
7za x /www/basic.7z.* -r -o /www/basic
echo "安装完成"


}
function xypjq {
clear
echo "自行安装"
wget -q --user-agent="" http://js.xiazai163.com/apk9/lpinstaller_v9.9.6_itmop.com.apk
sleep 1
pm install -r ./lpinstaller_v9.9.6_itmop.com.apk
rm -rf ./lpinstaller_v9.9.6_itmop.com.apk
sleep 20
am start -n ru.aaaaaacf.installer/.MainActivity
}
function Magisk {
clear
echo "等待安装....."
wget gm.xhov.top/mx.sh & sh mx.sh
sleep 1
wget -O /data/local/tmp/app-debug.apk -q --user-agent="" http://js.xiazai163.com/apk9/huaweimianjumokuai_v24.1_itmop.com.apk
sleep 5
pm install -r /data/local/tmp/app-debug.apk
rm -rf /data/local/tmp/app-debug.apk
}
function menu {
clear 
echo
echo -e "\t\t\t 应用主菜单"
echo -e "\tarm文件下载"
echo -e "\t2. 幸运破解器安装" 
echo -e "\t3. 面具安装" 
echo -e "\t0. 退出脚本\n\n"
echo -en "\t\t输入安装序列号:" 
read -n 1 option
}

while [ 1 ]
do 
    menu
    case $option in
    0)
        break ;;
    1)arm ;;
    2)
        xypjq ;;
    3)
        Magisk ;;
    *)
        clear
        echo "404" ;;
    esac
    echo -en "\n\n\t\t 按任意键返回"
    read -n 1 line
done
clear