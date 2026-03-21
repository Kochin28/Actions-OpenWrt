#!/bin/bash

# 1. 添加 SSR-Plus (helloworld)
echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default

# 2. 添加 PassWall2 及其依賴插件源
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >> feeds.conf.default
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages' >> feeds.conf.default
