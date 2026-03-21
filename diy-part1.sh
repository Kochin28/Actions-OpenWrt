#!/bin/bash
# 添加 PassWall 2 軟件源
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall;main' >> feeds.conf.default
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages;main' >> feeds.conf.default

# 添加 SSR Plus 軟件源 (如果 EasyWrt 未內置)
# echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default
